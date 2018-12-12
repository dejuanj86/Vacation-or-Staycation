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
    
    			<h3>We Suggest</h3>
                    <div id="eachHotel">
                    	<form action="staycation-result">
                    <tr>
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
                        <td>Check In: ${tourOption.departureDate}<br></td>
                        <td>Check Out: ${tourOption.returnDate}<br></td>                    	
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
                        <td>${yelpSearch2.rating}<br></td>
                        <td>${yelpSearch2.phone}<br></td>
                        <td><img src="${yelpSearch2.image_url}"></td><br>

					</tr>
                       	<td><h1>Only $${adjustedPrice}/person!</h1></td>



                       	Number of happy travelers: <input type="number" name="passengerNum" required min="1" max="100" value="1"><br><br>
                       	
                       	
                       	
                       	Primary Traveler Contact Information:
                        <input type="text" name="firstName" required placeholder="First Name"> <br>
                        <input type="text" name="lastName" required placeholder="Last Name"> <br>
                        <input type="tel" name="phone" required pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="ex. 555-555-5555"> <br>
                        <input type="email" name="email" required placeholder="email"> <br>
                       	
                       	
						<input type="submit" name="resultSelection" value="Book My Hotel and Attraction"><br>
						<input type="submit" name="resultSelection" value="Back to the Beginning"><br>


                      	</form>
                    </div>
    </div>



</body>
</html>