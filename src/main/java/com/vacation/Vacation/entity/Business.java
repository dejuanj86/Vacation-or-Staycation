package com.vacation.Vacation.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)

public class Business {

	private String rating;
	private String price;
	private String phone;
	private boolean is_closed;
	private String name;
	private String url;
	private String imageUrl;
	private Location location;
	
	public Business() {
		// TODO Auto-generated constructor stub
	}

	public Business(String rating, String price, String phone, boolean is_closed, String name, String url,
			String imageUrl, Location location) {
		this.rating = rating;
		this.price = price;
		this.phone = phone;
		this.is_closed = is_closed;
		this.name = name;
		this.url = url;
		this.imageUrl = imageUrl;
		this.location = location;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public boolean isIs_closed() {
		return is_closed;
	}

	public void setIs_closed(boolean is_closed) {
		this.is_closed = is_closed;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Location getLocation() {
		return location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}

	@Override
	public String toString() {
		return "Business [rating=" + rating + ", price=" + price + ", phone=" + phone + ", is_closed=" + is_closed
				+ ", name=" + name + ", url=" + url + ", imageUrl=" + imageUrl + ", location=" + location + "]";
	}
	
	
}

