package com.vacation.Vacation.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity //this maps us to the table
@Table(name="customer")
public class Customer {

	@Id //referring to the primary key for hibernate
	@GeneratedValue(strategy= GenerationType.IDENTITY) //this is allowing mysql to auto-increment and generate the primary key for us
	private Integer customerid;
	@Column(name="firstname")
	private String firstName;
	@Column(name="lastname")
	private String lastName;
	private String phone;
	private String email;
	
	public Customer() {
		// TODO Auto-generated constructor stub
	}

	public Customer(Integer customerid, String firstName, String lastName, String phone, String email) {
		this.customerid = customerid;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phone = phone;
		this.email = email;
	}

	public Integer getCustomerid() {
		return customerid;
	}

	public void setCustomerid(Integer customerid) {
		this.customerid = customerid;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Customer [customerid=" + customerid + ", firstName=" + firstName + ", lastName=" + lastName + ", phone="
				+ phone + ", email=" + email + "]";
	}



	
}
