package com.example.demo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.domain.Manager;
import com.example.demo.service.impl.ManagerServiceImpl;

@Controller
public class LoginController {
	
	@Autowired
	ManagerServiceImpl managerServiceImpl;
	
	@PostMapping("/login")
	@ResponseBody
	public Map<String,Object> doLogin(HttpServletRequest request , HttpSession session){
		Map<String,Object> rest = new HashMap<>();
		String hash = request.getHeader("Authorization");
		String[] data = hash.split(" ");
		if(data.length == 2 && "Base".equals(data[0])){
			byte[] str = Base64.decodeBase64(data[1].getBytes());
			String nameAndPwd = new String(str);
			System.out.println(nameAndPwd);
			data = nameAndPwd.split(":");
			if(data.length == 2){
				String name = data[0];
				String pwd = data[1];
				Manager m = managerServiceImpl.doLogin(name, pwd);
				if(m != null){
					session.setAttribute("MANAGER", m);
					rest.put("status", true);
					rest.put("data", "ok");
					return rest;
				}
			}
		}
		rest.put("status", true);
		rest.put("data", "err");
		return rest;
	}
}
