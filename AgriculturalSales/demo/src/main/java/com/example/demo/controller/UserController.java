package com.example.demo.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.example.demo.service.impl.UserServiceImpl;

@RestController
public class UserController {
	
	@Autowired
	UserServiceImpl userServiceImpl;

	@GetMapping("/test")
	public String getUser1(){
		int id = 1;
		System.out.println("id:" + id);
		String username = userServiceImpl.getUser(id);
		System.out.println(username);
		return username;
	}
	@PostMapping("/upload/html")
	public String upload(@RequestBody Map<String,Object> map){
		System.out.println(map);
		System.out.println(map.get("name"));
		return "ok";
	}
}
