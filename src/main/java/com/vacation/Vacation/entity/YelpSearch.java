package com.vacation.Vacation.entity;

import java.util.ArrayList;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)

public class YelpSearch {

	private ArrayList<Business> businesses = new ArrayList<>();
	
	public YelpSearch() {
		// TODO Auto-generated constructor stub
	}

	public YelpSearch(ArrayList<Business> businesses) {
		this.businesses = businesses;
	}

	public ArrayList<Business> getBusinesses() {
		return businesses;
	}

	public void setBusinesses(ArrayList<Business> businesses) {
		this.businesses = businesses;
	}

	@Override
	public String toString() {
		return "YelpSearch [businesses=" + businesses + "]";
	}

	
	
}