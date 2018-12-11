<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />

</head>
<body>

   <div class="column" id="staycation">
    
    			<h3>Your Final Booking Information</h3>
                    <div id="eachHotel">
                    	<form action="staycation-booking-confirmation">
                    <tr>
                    	<td><h5>Primary Booking Contact</h5><br></td>
                       	<td>${customerInfo.firstName} </td>
                    	<td>${customerInfo.lastName}<br></td>
 						<td>${customerInfo.phone}<br></td> 
 						<td>${customerInfo.email}<br><br></td>                      

                    
                    	<td><h1>${tourOption.name}</h1><br></td>
                   
                    </tr>
                    <tr>
                    	<td><h5>Your Hotel</h5></td>
                        <td>${yelpSearch1.name}<br></td>
                        <td>${yelpSearch1.location.address1}<br></td>
                        <td>${yelpSearch1.location.city}, </td>
                        <td>${yelpSearch1.location.state} </td>
                        <td>${yelpSearch1.location.zip_code}<br></td>
                        <td>${yelpSearch1.location.country}<br></td>
                        <td>Rating: ${yelpSearch1.rating}<br></td>
                        <td>${yelpSearch1.phone}<br></td>
                        <td><img src="${yelpSearch1.image_url}"></td><br>
                    </tr>
                    
                    <tr>
                    	<td><h5>Your Attraction</h5></td>
                        <td>${yelpSearch2.name}<br></td>
                        <td>${yelpSearch2.location.address1}<br></td>
                        <td>${yelpSearch2.location.city}, </td>
                        <td>${yelpSearch2.location.state} </td>
                        <td>${yelpSearch2.location.zip_code}<br></td>
                        <td>${yelpSearch2.location.country}<br></td>
                        <td>Rating: ${yelpSearch2.rating}<br></td>
                        <td>${yelpSearch2.phone}<br></td>
                        <td><img src="${yelpSearch2.image_url}"></td><br>

					</tr>
                       	<td><h1> $${adjustedPrice}</h1></td>
                       	
                       	
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
                       	
                       	
                       	"class="btn btn-primary">Email Me My Trip</a>	
						<input type="submit" name="returnHome" value="Back to the Beginning"><br>
                      	</form>
                    </div>
    </div>



</body>
</html>