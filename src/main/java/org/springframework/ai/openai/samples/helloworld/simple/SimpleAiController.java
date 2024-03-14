package org.springframework.ai.openai.samples.helloworld.simple;

import org.springframework.ai.chat.ChatClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class SimpleAiController {

	private final ChatClient chatClient;

	@Autowired
	public SimpleAiController(ChatClient chatClient) {
		this.chatClient = chatClient;
	}
	
	@GetMapping("/ai/index1")
	public String index(@RequestParam(value = "message", defaultValue = "Tell me a joke") String message) {
		return "index2";
	}

	@GetMapping("/ai/simple")
	public String completion(@RequestParam(value = "message", defaultValue = "Tell me a joke") String message) {
		System.out.println("In coming request...");
		System.out.println(message);
		return chatClient.call(message);
	}
}
