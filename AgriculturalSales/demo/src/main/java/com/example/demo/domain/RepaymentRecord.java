package com.example.demo.domain;

import java.util.Date;

public class RepaymentRecord {
	private Integer id;
	private Integer userId;
	private Integer orderId;
	private Date time;
	private Double money;
	private Date createTime;
	private Date updateTime;
	private Integer deleted;

	public RepaymentRecord() {
		super();
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return this.id;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Integer getOrderId() {
		return this.orderId;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Date getTime() {
		return this.time;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Double getMoney() {
		return this.money;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}

	public Integer getDeleted() {
		return this.deleted;
	}
}