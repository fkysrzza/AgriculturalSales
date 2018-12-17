package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {
	String getUserById(@Param("id")int id);
}
