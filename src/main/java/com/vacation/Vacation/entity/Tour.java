package com.vacation.Vacation.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity //this maps us to the table
@Table(name="tour")
public class Tour {

	@Id //referring to the primary key for hibernate
	@GeneratedValue(strategy= GenerationType.IDENTITY) //this is allowing mysql to auto-increment and generate the primary key for us
	private Integer tourid;

	private String category;
	private String climate;
	private String name;
	private String city;
	@Column(name="departuredate")
	private String departureDate;
	@Column(name="returndate")
	private String returnDate;
	@Column(name="destinationairport")
	private String destinationAirport;
	private String airline;
	@Column(name="flightnum")
	private String flightNum;
	@Column(name="flightduration")
	private String flightduration;
	
	public Tour() {
		// TODO Auto-generated constructor stub
	}

	public Tour(Integer tourid, String category, String climate, String name, String city, String departureDate,
			String returnDate, String destinationAirport, String airline, String flightNum, String flightduration) {
		this.tourid = tourid;
		this.category = category;
		this.climate = climate;
		this.name = name;
		this.city = city;
		this.departureDate = departureDate;
		this.returnDate = returnDate;
		this.destinationAirport = destinationAirport;
		this.airline = airline;
		this.flightNum = flightNum;
		this.flightduration = flightduration;
	}

	public Integer getTourid() {
		return tourid;
	}

	public void setTourid(Integer tourid) {
		this.tourid = tourid;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getClimate() {
		return climate;
	}

	public void setClimate(String climate) {
		this.climate = climate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}

	public String getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}

	public String getDestinationAirport() {
		return destinationAirport;
	}

	public void setDestinationAirport(String destinationAirport) {
		this.destinationAirport = destinationAirport;
	}

	public String getAirline() {
		return airline;
	}

	public void setAirline(String airline) {
		this.airline = airline;
	}

	public String getFlightNum() {
		return flightNum;
	}

	public void setFlightNum(String flightNum) {
		this.flightNum = flightNum;
	}

	public String getFlightduration() {
		return flightduration;
	}

	public void setFlightduration(String flightduration) {
		this.flightduration = flightduration;
	}

	@Override
	public String toString() {
		return "Tour [tourid=" + tourid + ", category=" + category + ", climate=" + climate + ", name=" + name
				+ ", city=" + city + ", departureDate=" + departureDate + ", returnDate=" + returnDate
				+ ", destinationAirport=" + destinationAirport + ", airline=" + airline + ", flightNum=" + flightNum
				+ ", flightduration=" + flightduration + "]";
	}

	
}
