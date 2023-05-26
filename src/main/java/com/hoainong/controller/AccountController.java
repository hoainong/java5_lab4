package com.hoainong.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hoainong.mockdata.MockdataUser;
import com.hoainong.service.CookieService;
import com.hoainong.service.ParamService;
import com.hoainong.service.SessionService;

@Controller
public class AccountController {
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	@Autowired
	ParamService paramService;

	
	@RequestMapping("/")
	public String index() {
		return "account";
	}
	@GetMapping("/account/login")
	public String login1(Model model) {
		model.addAttribute("username", cookieService.getCookie("username"));
		model.addAttribute("password", cookieService.getCookie("password"));
		return "account";
	}
	@PostMapping("/account/login")
	public String login2(Model model) {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		boolean rm = paramService.getBoolean("remember", false);
		for(int i = 0; i < MockdataUser.listUsers.size(); i++) {
			if(username.equals(MockdataUser.listUsers.get(i).getUsername()) && password.equals(MockdataUser.listUsers.get(i).getPassword())) {
				sessionService.set("user", MockdataUser.listUsers.get(i));
				if(rm) {
					cookieService.addCookie("username", username, 1);
					cookieService.addCookie("password", password, 1);
				}else {
					cookieService.removeCookie("username");
					cookieService.removeCookie("password");
				}
				return "redirect:/products";
			}
		}	
		return "account";
	}
}
