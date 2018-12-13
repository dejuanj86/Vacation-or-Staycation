<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  	<title>The Perfect Vacation! - Vacation or Staycation</title>
  	<meta charset="utf-8" />
  	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  	<!-- Bootstrap 4 -->
  	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  	<!-- css -->
  	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Open+Sans:400,300,700,800" rel="stylesheet" media="screen">
	<link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">
  	<link href="/css/style.css" rel="stylesheet" media="screen">
  	<link href="/color/default.css" rel="stylesheet" media="screen">
  	<link href="/css/app-style.css" rel="stylesheet" media="screen">
</head>
<body id="app-body">
	<img id="logo-md" src="img/logo.png">
	<div class="container col-lg-12" id="">
		<h3>Let's get lost!</h3>
		<div id="eachHotel">
		<table class="table table-hover" style="background-color: #b0e0e6; border-color: #4cae4;">
			<thead class="thead">
				<th>Tour Name</th>
				<th>Your Flight</th>
				<th>Leaving</th>
				<th>Airline</th>
				<th>Outbound Flight Number</th>
				<th>Returning On</th>
				<th>Airline</th>
				<th>Inbound Flight Number</th>
			</thead>
			<tbody>
				<tr>
					<td><h3>${tourOption.name}</h3></td>
					<td>From Detroit (DTW) to ${tourOption.destinationAirport}</td>
					<td>Leaving on ${tourOption.departureDate}</td>
					<td>${tourOption.airline}</td> 
					<td>${tourOption.outboundFlightNum}</td>   
					<td>Returning on ${tourOption.returnDate}</td>
					<td>${tourOption.airline}</td>
					<td>${tourOption.inboundFlightNum}</td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>
	<div class="container col-lg-12" id="">
		<h3>Your Hotel</h3>
		<div id="eachHotel">
		<table class="table table-hover" style="background-color: #b0e0e6; border-color: #4cae4;">
			<thead class="thead">
				<th>Hotel Name</th>
				<th>Address</th>
				<th>City</th>
				<th>State</th>
				<th>Zip Code</th>
				<th>Country</th>
				<th>rating</th>
				<th>Phone Number</th>
			</thead>
			<tbody>
				<tr>
					<td>${yelpSearch1.name}</td>
					<td>${yelpSearch1.location.address1}</td>
					<td>${yelpSearch1.location.city}, </td>
					<td>${yelpSearch1.location.state} </td>
					<td>${yelpSearch1.location.zip_code}</td>
					<td>${yelpSearch1.location.country}</td>
					<td>Rating: ${yelpSearch1.rating}</td>
					<td>${yelpSearch1.phone}</td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>
	<div class="container col-lg-12" id="">
		<h3>Your Attraction</h3>
		<div id="eachHotel">
		<table class="table table-hover" style="background-color: #b0e0e6; border-color: #4cae4;">
			<thead class="thead">
				<th>Attraction Name</th>
				<th>Address</th>
				<th>City</th>
				<th>State</th>
				<th>Zip Code</th>
				<th>Country</th>
				<th>Rating</th>
				<th>Image</th>
			</thead>
			<tbody>
				<tr>
					<td>${yelpSearch2.name}</td>
					<td>${yelpSearch2.location.address1}</td>
					<td>${yelpSearch2.location.city}, </td>
					<td>${yelpSearch2.location.state} </td>
					<td>${yelpSearch2.location.zip_code}</td>
					<td>${yelpSearch2.location.country}</td>
					<td>Rating: ${yelpSearch2.rating}</td>
					<td>${yelpSearch2.phone}</td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>
	<div class="container col-lg-12">
		<div class="row">
			<div class="polaroid col-lg-4">
			  	<img src="${yelpSearch1.image_url}" alt="${yelpSearch1.name}" style="width:470px; height:350px;">
			  	<div class="polaroid-container">
			  	<h2 style="font-style: italic;">${yelpSearch1.name}</h2>
			  	</div>
			</div>
			<div class="col-lg-4"></div>
			<div class="polaroid col-lg-4">
			  	<img src="${yelpSearch2.image_url}" alt="${yelpSearch2.name}" style="width:470px; height:350px;">
			  	<div class="polaroid-container">
			  	<h2 style="font-style: italic;">${yelpSearch2.name}</h2>
			  	</div>
			</div>
		</div>
	</div>
	<div class="container col-lg-12" id="">
		<h1>Only $${adjustedPrice}/person flying economy class, or $${businessClass}/person flying business class!</h1>
		<div id="eachHotel">
		<table class="table table-success table-hover">
			<thead class="thead">
				<th>Primary Traveler Contact Information:</th>
			</thead>
			<form action="vacation-result">
			<tbody>
				<tr><td>Number of Happy Travelers: <input type="number" name="passengerNum" min="1" max="100" value="1"></td></tr>
				<tr><td>First Name: <input type="text" name="firstName" required placeholder="First Name"></td></tr>
				<tr><td>Last Name: <input type="text" name="lastName" required placeholder="Last Name"></td></tr>
				<tr><td>Phone: <input type="tel" name="phone" required pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="ex. 555-555-5555"></td></tr>
				<tr><td>Email: <input type="email" name="email" required placeholder="email"></td></tr>
				<tr><td><input class="btn btn-success" type="submit" name="resultSelection" value="Book My Hotel and Attraction with Economy Class Airfare"></td></tr>
				<tr><td><input class="btn btn-success" type="submit" name="resultSelection" value="Book My Hotel and Attraction with Business Class Airfare"></td></tr>
				<tr><td><input class="btn btn-success" type="submit" name="resultSelection" value="Show me all available vacation tours"></td></tr>
				<tr><td><input class="btn btn-success" type="submit" name="resultSelection" value="Back to the Beginning"></td></tr>
			</tbody>
			</form>
		</table>
		</div>
	</div>
</body>
</html>