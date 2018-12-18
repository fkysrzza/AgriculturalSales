package com.example.demo.domain;

import java.util.Date;

public class Permission{ 	 private Integer id; 	 private Integer classes; 	 private Date createTime; 	 private Date updateTime; 	 private Integer deleted; 	 public Permission() {
 	 	 super();	}
 	 public void setId(Integer id){ 		 this.id=id; 	 } 	 public Integer getId(){ 		 return this.id; 	 } 	 public void setClasses(Integer classes){ 		 this.classes=classes; 	 } 	 public Integer getClasses(){ 		 return this.classes; 	 } 	 public void setCreateTime(Date createTime){ 		 this.createTime=createTime; 	 } 	 public Date getCreateTime(){ 		 return this.createTime; 	 } 	 public void setUpdateTime(Date updateTime){ 		 this.updateTime=updateTime; 	 } 	 public Date getUpdateTime(){ 		 return this.updateTime; 	 } 	 public void setDeleted(Integer deleted){ 		 this.deleted=deleted; 	 } 	 public Integer getDeleted(){ 		 return this.deleted; 	 }
}