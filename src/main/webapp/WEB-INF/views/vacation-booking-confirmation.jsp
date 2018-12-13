<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  	<title>Vacation Booking Confirmation - Vacation or Staycation</title>
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
		<h1>Your Final Booking Information</h1>
		<h3>Primary Booking Contact</h3>
		<div id="eachHotel">
		<table class="table table-hover" style="background-color: #b0e0e6; border-color: #4cae4;">
			<thead class="thead">
				<th>First Name</th>
				<th>Last Name</th>
				<th>Phone</th>
				<th>Email</th>
			</thead>
			<tbody>
				<tr>
					<td>${customerInfo.firstName}</td>
					<td>${customerInfo.lastName}<br></td>
					<td>${customerInfo.phone}<br></td>
					<td>${customerInfo.email}<br> <br></td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>
	<div class="container col-lg-12" id="">
		<h3>Your Tour</h3>
		<div id="eachHotel">
		<table class="table table-hover" style="background-color: #b0e0e6; border-color: #4cae4;">
			<thead class="thead">
				<th>Tour Name</th>
			</thead>
			<tbody>
				<tr>
					<td><h1>${tourOption.name}</h1></td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>
	<div class="container col-lg-12" id="">
		<h3>Flight Information</h3>
		<div id="eachHotel">
		<table class="table table-hover" style="background-color: #b0e0e6; border-color: #4cae4;">
			<thead class="thead">
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
	<div class="">
		<h1>Final Price: $${adjustedPrice}</h1> 
		<form action="vacation-booking-confirmation">
		<a href="mailto:${customerInfo.email}?subject=Your Tour Selection&body=Primary Booking Contact:%09${customerInfo.firstName} ${customerInfo.lastName}%0D
                       	${customerInfo.phone}%0D
                       	${customerInfo.email}%0D%0D
                       	
                       	
                       	
                       	Tour Name:%09${tourOption.name}%0DYour Flight%0D
                       	From Detroit (DTW) to ${tourOption.destinationAirport}%0D
                       	Leaving on ${tourOption.departureDate}%0D
                       	${tourOption.airline} ${tourOption.outboundFlightNum}%0D%0D
                       	
                       	Returning on ${tourOption.returnDate}%0D
                       	${tourOption.airline} ${tourOption.inboundFlightNum}%0D%0D
                       	
                       	Your Hotel:%0D
                       	${yelpSearch1.name}%0D
                       	${yelpSearch1.location.address1}%0D
                       	${yelpSearch1.location.city}, ${yelpSearch1.location.state} ${yelpSearch1.location.zip_code}%0D
                       	${yelpSearch1.location.country}%0D
                       	Rating: ${yelpSearch1.rating}%0D
                       	${yelpSearch1.phone}%0D%0D
                       	
                       	Your Attraction:%0D
                       	${yelpSearch2.name}%0D
                       	${yelpSearch2.location.address1}%0D
                       	${yelpSearch2.location.city}, ${yelpSearch2.location.state} ${yelpSearch2.location.zip_code}%0D
                       	${yelpSearch2.location.country}%0D
                       	Rating: ${yelpSearch2.rating}%0D
                       	${yelpSearch2.phone}%0D%0D
                       
                        Thank you for booking with Vacation or Staycation!%0D%0D
                        
                        Your final trip cost was: $${adjustedPrice}%0D%0D
                        
                        Enjoy your trip!
                       	
                       	
                       	"
					class="btn btn-success">Email Me My Trip</a> 
					<input class="btn btn-primary" type="submit" name="returnHome" value="Back to the Beginning"><br>
		</form>
	</div>
</body>
</html>