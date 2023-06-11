package com.zoho.entitties;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table (name = "contact")
public class Contact extends AbstractClass{
	@Column(name="first_Name", nullable=false,length=45)
private String firstName;
	@Column(name="last_Name",nullable=false,length=45)
private String lastName;
	@Column(name="email",nullable=false,length=45,unique=true)
private String email;
	@Column(name="mobile",nullable=false,unique=true)
private Long mobile;
	private String source;
public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
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
public Long getMobile() {
	return mobile;
}
public void setMobile(Long mobile) {
	this.mobile = mobile;
}

}
