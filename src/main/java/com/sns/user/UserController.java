package com.sns.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/diary/user")
@Controller
public class UserController {
	
	@RequestMapping("/sign_up_view")
	public String sign_up_view(Model model) {
		model.addAttribute("viewName", "user/sign_up");
		return "/template/layout";
	}
	
	@RequestMapping("/sign_in_view")
	public String sign_in_view(Model model) {
		model.addAttribute("viewName", "user/sign_in");
		return "/template/layout";
	}
}
