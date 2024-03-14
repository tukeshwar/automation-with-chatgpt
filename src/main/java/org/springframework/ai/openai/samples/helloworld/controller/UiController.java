package org.springframework.ai.openai.samples.helloworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UiController {
	
	@GetMapping("/ai/index")
	public String index() {
		
		
		
		return "index";
	}
	
}
