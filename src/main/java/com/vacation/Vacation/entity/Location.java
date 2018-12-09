package com.vacation.Vacation.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)

public class Location {

	private String city;
	private String country;
	private String address2;
	private String address3;
	private String state;
	private String address1;
	private String zip_code;
	
	public Location() {
		// TODO Auto-generated constructor stub
	}

	public Location(String city, String country, String address2, String address3, String state, String address1,
			String zip_code) {
		this.city = city;
		this.country = country;
		this.address2 = address2;
		this.address3 = address3;
		this.state = state;
		this.address1 = address1;
		this.zip_code = zip_code;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getZip_code() {
		return zip_code;
	}

	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}

	@Override
	public String toString() {
		return "Location [city=" + city + ", country=" + country + ", address2=" + address2 + ", address3=" + address3
				+ ", state=" + state + ", address1=" + address1 + ", zip_code=" + zip_code + "]";
	}
	
	
}