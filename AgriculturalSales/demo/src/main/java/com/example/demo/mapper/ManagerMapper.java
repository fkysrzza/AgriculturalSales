package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.example.demo.domain.Manager;

@Mapper
public interface ManagerMapper {

	List<Manager> getManager(@Param("manager")Manager manager);
}
