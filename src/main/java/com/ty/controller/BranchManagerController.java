package com.ty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ty.dto.Branch;
import com.ty.dto.FoodProduct;
import com.ty.dto.Menu;
import com.ty.dto.User;
import com.ty.service.BranchService;
import com.ty.service.FoodProductService;
import com.ty.service.MenuService;
import com.ty.service.UserService;

@Controller
public class BranchManagerController {

	@Autowired
	private MenuService menuService;
	@Autowired
	private UserService userService;
	@Autowired
	private FoodProductService foodProductService;

	@RequestMapping("/createmenu")
	public ModelAndView name() {
		ModelAndView modelAndView = new ModelAndView("createmenu.jsp");
		List<User> branchmanagers = userService.getUserByRole("BranchManager");
		modelAndView.addObject("branchManagers", branchmanagers);
		modelAndView.addObject("menu", new Menu());
		return modelAndView;
	}
	@RequestMapping("/savemenu")
	public ModelAndView saveBranch(@ModelAttribute Menu menu) {
		ModelAndView modelAndView = new ModelAndView("branchmanager.jsp");
		menuService.createMenuService(menu);
		return modelAndView;
	}
	@RequestMapping("/viewmenu")
	public ModelAndView viewMenu() {
		ModelAndView modelAndView = new ModelAndView("viewmenu.jsp");
		Menu menu = menuService.getMenuServiceByUserId(6);
		modelAndView.addObject("menu", menu);
		return modelAndView;
	}
	
	@RequestMapping("/creatproduct")
	public ModelAndView createProduct() {
		ModelAndView modelAndView = new ModelAndView("createfoodproduct.jsp");
		List<Menu> allMenu = menuService.getAllMenu();
		modelAndView.addObject("menu", allMenu);
		modelAndView.addObject("foodProduct", new FoodProduct());
		return modelAndView;
	}
	@RequestMapping("/saveproduct")
	public ModelAndView saveProduct(@ModelAttribute FoodProduct foodProduct) {
		boolean result=foodProductService.createFoodProduct(foodProduct);
		return viewMenu();
	}
	
	@RequestMapping("/editproduct")
	public ModelAndView editUser(int id) {
		FoodProduct foodProduct=foodProductService.getFoodProductById(id);
		ModelAndView modelAndView = new ModelAndView("editfoodproduct.jsp");
		modelAndView.addObject("foodproduct", foodProduct);

		return modelAndView;
	}

	@RequestMapping("/updatemenu")
	public ModelAndView updateUser(@ModelAttribute FoodProduct foodProduct) {
         ModelAndView modelAndView=new ModelAndView("display.jsp");
         return viewMenu();
		
	}

	@RequestMapping("/deletemenu")
	public ModelAndView deletUser(int id) {
		boolean result = foodProductService.deleteFoodProduct(foodProductService.getFoodProductById(id));
		ModelAndView modelAndView=new ModelAndView("display.jsp");
		if (result) {
			return viewMenu();
		}
		modelAndView.addObject("errorMessage", "User not found.");
		return modelAndView;
	}
	
}
