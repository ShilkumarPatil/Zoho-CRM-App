package com.zoho.entitties;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="Billing")
public class Billing extends AbstractClass{
	@Column(name="First_Name",nullable=false)
private String firstName;
	@Column(name="Last_Name",nullable=false)
private String lastName;
	@Column(name="Email",nullable=false)
private String email;
	@Column(name="Mobile",nullable=false)
private long mobile;
	@Column(name="Product",nullable=false)
private String product;
	@Column(name="Quantity",nullable=false)
private String quantity;
	@Column(name="Amount",nullable=false)
private int amount;
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
}
