package com.ty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ty.dto.User;
import com.ty.service.UserService;
import com.ty.util.Role;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("/signup")
	public ModelAndView signUp() {
		ModelAndView modelAndView = new ModelAndView("signup.jsp");
		modelAndView.addObject("user", new User());
		return modelAndView;

	}

	@RequestMapping("/saveuser")
	public ModelAndView saveUser(@ModelAttribute User user) {
		ModelAndView modelAndView = new ModelAndView("message.jsp");
		boolean result = userService.saveService(user);
		if (result) {
			modelAndView.addObject("message", "sucessfull");
			return showLoginForm();
		}
		modelAndView.addObject("message", "Not sucessfull");
		return modelAndView;
	}

	@RequestMapping("/login")
	public ModelAndView showLoginForm() {
		ModelAndView modelAndView = new ModelAndView("signin.jsp");
		modelAndView.addObject("user", new User());

		return modelAndView;
	}

	// This method handles the form submission
	@RequestMapping("/loginin")
	public ModelAndView login(@ModelAttribute User user) {
		User loginuser = userService.loginService(user.getEmail(), user.getPassword());

		ModelAndView modelAndView = new ModelAndView("signin.jsp");
		if (loginuser != null) {
			if (loginuser.getRole().equals(Role.ADMIN)) {
				return new ModelAndView("admin.jsp").addObject("user", loginuser);
			} else if (loginuser.getRole().equals(Role.BRANCHMANAGER)) {
				return new ModelAndView("branchmanager.jsp").addObject("user", loginuser);
			} else if (loginuser.getRole().equals(Role.STAFF)) {
				return new ModelAndView("staff.jsp").addObject("staff", loginuser);
			} else {
				return new ModelAndView("customer.jsp").addObject("user", loginuser);
			}
		} else {
			modelAndView.addObject("errorMessage", "Invalid email or password. Please try again.");
			return modelAndView;
		}
	}

	@RequestMapping("/finduser")
	public ModelAndView findAllUser() {
		List<User> allUser = userService.getAllUser();
		ModelAndView modelAndView = new ModelAndView("viewuser.jsp");
		modelAndView.addObject("users", allUser);

		return modelAndView;
	}

	@RequestMapping("/edituser")
	public ModelAndView editUser(int id) {
		User user=userService.getByIdService(id);
		ModelAndView modelAndView = new ModelAndView("edituser.jsp");
		modelAndView.addObject("user", user);

		return modelAndView;
	}

	@RequestMapping("/updateuser")
	public ModelAndView updateUser(@ModelAttribute User user) {

		boolean result = userService.updateService(user);
		if (result) {
			return findAllUser();
		}
		else {
		ModelAndView modelAndView = findAllUser();
		modelAndView.addObject("errorMessage", "User not found.");
		return modelAndView;
		}
	}

	@RequestMapping("/deleteuser")
	public ModelAndView deletUser(int id) {
		User user = userService.getByIdService(id);
		boolean result = userService.deleteService(user);
		if (result) {
			return findAllUser();
		}
		ModelAndView modelAndView = findAllUser();
		modelAndView.addObject("errorMessage", "User not found.");
		return modelAndView;
	}
}
