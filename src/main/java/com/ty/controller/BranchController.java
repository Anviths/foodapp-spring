package com.ty.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ty.dto.Branch;
import com.ty.dto.User;
import com.ty.service.BranchService;
import com.ty.service.UserService;

@Controller
public class BranchController {

	@Autowired
	private BranchService branchService;
	@Autowired
	private UserService userService;

	@RequestMapping("/createbranch")
	public ModelAndView createBranch() {
		ModelAndView modelAndView = new ModelAndView("createbranch.jsp");
		List<User> branchmanagers = userService.getUserByRole("BranchManager");
		modelAndView.addObject("branch", new Branch());
		modelAndView.addObject("branchManagers", branchmanagers);
		return modelAndView;
	}

	@RequestMapping("/savebranch")
	public ModelAndView saveBranch(@ModelAttribute Branch branch) {
		ModelAndView modelAndView = new ModelAndView("branchmanager.jsp");
		branchService.createBranchService(branch);
		return modelAndView;
	}

}
