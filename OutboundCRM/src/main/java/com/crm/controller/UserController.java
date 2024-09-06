package com.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.crm.model.User;
import com.crm.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/create-user")
	public String createUser(@ModelAttribute User user, Model model, HttpSession session) {
		user.setAdmin(false);
		// Fetching all user
		User dbuser = userService.createUser(user);	
		List<User> allUser = userService.findAllUser();
		model.addAttribute("users", allUser);
		if(dbuser !=null) {
			session.setAttribute("userSuccess", allUser);
		}
		return "add-user";
	}
	
	@GetMapping("/deleteUser/{userId}")
	public String deleteUser(@PathVariable Long userId, HttpSession session) {
		userService.deleteUser(userId);
		session.setAttribute("deleteSuccess", "delete");
		return "redirect:/add-user";
	}
	
}
