package com.example.demo.domain;

import java.util.Date;

public class GitOrder{ 	 private Integer id; 	 private Integer orderPrice; 	 private Date time; 	 private Double extraPrice; 	 private Integer factoryId; 	 private Integer isPayment; 	 private Date createTime; 	 private Date updateTime; 	 private Integer deleted; 	 public GitOrder() {
 	 	 super();	}
 	 public void setId(Integer id){ 		 this.id=id; 	 } 	 public Integer getId(){ 		 return this.id; 	 } 	 public void setOrderPrice(Integer orderPrice){ 		 this.orderPrice=orderPrice; 	 } 	 public Integer getOrderPrice(){ 		 return this.orderPrice; 	 } 	 public void setTime(Date time){ 		 this.time=time; 	 } 	 public Date getTime(){ 		 return this.time; 	 } 	 public void setExtraPrice(Double extraPrice){ 		 this.extraPrice=extraPrice; 	 } 	 public Double getExtraPrice(){ 		 return this.extraPrice; 	 } 	 public void setFactoryId(Integer factoryId){ 		 this.factoryId=factoryId; 	 } 	 public Integer getFactoryId(){ 		 return this.factoryId; 	 } 	 public void setIsPayment(Integer isPayment){ 		 this.isPayment=isPayment; 	 } 	 public Integer getIsPayment(){ 		 return this.isPayment; 	 } 	 public void setCreateTime(Date createTime){ 		 this.createTime=createTime; 	 } 	 public Date getCreateTime(){ 		 return this.createTime; 	 } 	 public void setUpdateTime(Date updateTime){ 		 this.updateTime=updateTime; 	 } 	 public Date getUpdateTime(){ 		 return this.updateTime; 	 } 	 public void setDeleted(Integer deleted){ 		 this.deleted=deleted; 	 } 	 public Integer getDeleted(){ 		 return this.deleted; 	 }
}