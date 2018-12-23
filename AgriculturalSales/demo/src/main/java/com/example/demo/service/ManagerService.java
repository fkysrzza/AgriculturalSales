package com.example.demo.service;

import com.example.demo.domain.Manager;

public interface ManagerService {
	Manager doLogin(String name , String pwd);
}
