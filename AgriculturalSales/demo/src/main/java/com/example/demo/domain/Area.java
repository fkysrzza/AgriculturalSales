package com.example.demo.domain;

public class Area{ 	 private Integer id; 	 private String name; 	 private Integer topId; 	 public Area() {
 	 	 super();	}
 	 public void setId(Integer id){ 		 this.id=id; 	 } 	 public Integer getId(){ 		 return this.id; 	 } 	 public void setName(String name){ 		 this.name=name; 	 } 	 public String getName(){ 		 return this.name; 	 } 	 public void setTopId(Integer topId){ 		 this.topId=topId; 	 } 	 public Integer getTopId(){ 		 return this.topId; 	 }
}