package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Manager;
import com.example.demo.mapper.ManagerMapper;
import com.example.demo.service.ManagerService;

@Service("managerServiceImpl")
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	ManagerMapper managerMapper;
	
	@Override
	public Manager doLogin(String name, String pwd) {
		Manager manager = new Manager();
		manager.setLoginName(name);
		List<Manager> list= managerMapper.getManager(manager);
		for(Manager m:list){
			if(pwd.equals(m.getPassword())){
				m.setPassword("");
				return m;
			}
		}
		return null;
	}

}
