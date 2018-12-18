package com.example.demo.domain;

import java.util.Date;

public class Inventory{ 	 private Integer id; 	 private Integer merchandiseId; 	 private Integer remaining; 	 private Integer sum; 	 private Date createTime; 	 private Date updateTime; 	 private Integer deleted; 	 public Inventory() {
 	 	 super();	}
 	 public void setId(Integer id){ 		 this.id=id; 	 } 	 public Integer getId(){ 		 return this.id; 	 } 	 public void setMerchandiseId(Integer merchandiseId){ 		 this.merchandiseId=merchandiseId; 	 } 	 public Integer getMerchandiseId(){ 		 return this.merchandiseId; 	 } 	 public void setRemaining(Integer remaining){ 		 this.remaining=remaining; 	 } 	 public Integer getRemaining(){ 		 return this.remaining; 	 } 	 public void setSum(Integer sum){ 		 this.sum=sum; 	 } 	 public Integer getSum(){ 		 return this.sum; 	 } 	 public void setCreateTime(Date createTime){ 		 this.createTime=createTime; 	 } 	 public Date getCreateTime(){ 		 return this.createTime; 	 } 	 public void setUpdateTime(Date updateTime){ 		 this.updateTime=updateTime; 	 } 	 public Date getUpdateTime(){ 		 return this.updateTime; 	 } 	 public void setDeleted(Integer deleted){ 		 this.deleted=deleted; 	 } 	 public Integer getDeleted(){ 		 return this.deleted; 	 }
}