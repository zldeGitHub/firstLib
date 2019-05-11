package com.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StartAction {
	@RequestMapping("/")
	public String welcoe() {
		
		return "/info/query";
	}
}
