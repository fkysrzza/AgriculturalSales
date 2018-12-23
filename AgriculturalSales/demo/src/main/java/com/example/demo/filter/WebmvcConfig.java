package com.example.demo.filter;

import org.springframework.web.servlet.HandlerInterceptor;

import com.example.demo.domain.Manager;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class WebmvcConfig implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 获取session
		HttpSession session = request.getSession(true);
		Manager manager = (Manager) session.getAttribute("manager");
		// 未登录
		if (manager == null) {
			response.setStatus(401);
			ServletOutputStream out = response.getOutputStream();
			out.println("unlogin");
			out.flush();
			out.close();
			return false;
		}
		return true;
	}
}
