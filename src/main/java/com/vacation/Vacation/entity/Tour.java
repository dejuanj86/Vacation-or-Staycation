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

	private String name;
	private String city;
	@Column(name="departuredate")
	private String departureDate;
	@Column(name="returndate")
	private String returnDate;
	@Column(name="destinationairport")
	private String destinationAirport;
	private String airline;
	@Column(name="outboundflightnum")
	private String outboundFlightNum;
	@Column(name="inboundflightnum")
	private String inboundFlightNum;
	@Column(name="flightduration")
	private Double flightDuration;
	private Double price;
	private String hotel1;
	private String hotel2;
	private String hotel3;
	private String hotel4;
	private String attraction;
	
	public Tour() {
		// TODO Auto-generated constructor stub
	}

	public Tour(Integer tourid, String name, String city, String departureDate, String returnDate,
			String destinationAirport, String airline, String outboundFlightNum, String inboundFlightNum,
			Double flightDuration, Double price, String hotel1, String hotel2, String hotel3, String hotel4,
			String attraction) {
		this.tourid = tourid;
		this.name = name;
		this.city = city;
		this.departureDate = departureDate;
		this.returnDate = returnDate;
		this.destinationAirport = destinationAirport;
		this.airline = airline;
		this.outboundFlightNum = outboundFlightNum;
		this.inboundFlightNum = inboundFlightNum;
		this.flightDuration = flightDuration;
		this.price = price;
		this.hotel1 = hotel1;
		this.hotel2 = hotel2;
		this.hotel3 = hotel3;
		this.hotel4 = hotel4;
		this.attraction = attraction;
	}

	public Integer getTourid() {
		return tourid;
	}

	public void setTourid(Integer tourid) {
		this.tourid = tourid;
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

	public String getOutboundFlightNum() {
		return outboundFlightNum;
	}

	public void setOutboundFlightNum(String outboundFlightNum) {
		this.outboundFlightNum = outboundFlightNum;
	}

	public String getInboundFlightNum() {
		return inboundFlightNum;
	}

	public void setInboundFlightNum(String inboundFlightNum) {
		this.inboundFlightNum = inboundFlightNum;
	}

	public Double getFlightDuration() {
		return flightDuration;
	}

	public void setFlightDuration(Double flightDuration) {
		this.flightDuration = flightDuration;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getHotel1() {
		return hotel1;
	}

	public void setHotel1(String hotel1) {
		this.hotel1 = hotel1;
	}

	public String getHotel2() {
		return hotel2;
	}

	public void setHotel2(String hotel2) {
		this.hotel2 = hotel2;
	}

	public String getHotel3() {
		return hotel3;
	}

	public void setHotel3(String hotel3) {
		this.hotel3 = hotel3;
	}

	public String getHotel4() {
		return hotel4;
	}

	public void setHotel4(String hotel4) {
		this.hotel4 = hotel4;
	}

	public String getAttraction() {
		return attraction;
	}

	public void setAttraction(String attraction) {
		this.attraction = attraction;
	}

	@Override
	public String toString() {
		return "Tour [tourid=" + tourid + ", name=" + name + ", city=" + city + ", departureDate=" + departureDate
				+ ", returnDate=" + returnDate + ", destinationAirport=" + destinationAirport + ", airline=" + airline
				+ ", outboundFlightNum=" + outboundFlightNum + ", inboundFlightNum=" + inboundFlightNum
				+ ", flightDuration=" + flightDuration + ", price=" + price + ", hotel1=" + hotel1 + ", hotel2="
				+ hotel2 + ", hotel3=" + hotel3 + ", hotel4=" + hotel4 + ", attraction=" + attraction + "]";
	}

}
