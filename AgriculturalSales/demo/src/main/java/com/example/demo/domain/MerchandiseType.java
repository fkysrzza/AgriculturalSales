package com.example.demo.domain;

import java.util.Date;

public class MerchandiseType{ 	 private Integer id; 	 private String name; 	 private Date createTime; 	 private Date updateTime; 	 private Integer deleted; 	 public MerchandiseType() {
 	 	 super();	}
 	 public void setId(Integer id){ 		 this.id=id; 	 } 	 public Integer getId(){ 		 return this.id; 	 } 	 public void setName(String name){ 		 this.name=name; 	 } 	 public String getName(){ 		 return this.name; 	 } 	 public void setCreateTime(Date createTime){ 		 this.createTime=createTime; 	 } 	 public Date getCreateTime(){ 		 return this.createTime; 	 } 	 public void setUpdateTime(Date updateTime){ 		 this.updateTime=updateTime; 	 } 	 public Date getUpdateTime(){ 		 return this.updateTime; 	 } 	 public void setDeleted(Integer deleted){ 		 this.deleted=deleted; 	 } 	 public Integer getDeleted(){ 		 return this.deleted; 	 }
}