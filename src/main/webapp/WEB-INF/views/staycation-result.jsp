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
                    	<form action="vacation-result">
                    <tr>
                    	<td><h1>${tourOption.name}</h1><br></td>
                    	                  
                    </tr>
                    <tr>
                    	<td><h5>Your Hotel</h5></td>
                        <td>${yelpSearch1.name}<br></td>
                        <td>${yelpSearch1.location.address1}<br></td>
                        <td>${yelpSearch1.location.city}<br></td>
                        <td>${yelpSearch1.location.state}<br></td>
                        <td>${yelpSearch1.location.zip_code}<br></td>
                        <td>${yelpSearch1.location.country}<br></td>
                        <td>${yelpSearch1.rating}<br></td>
                        <td>${yelpSearch1.phone}<br></td>
                        <td>Check In: ${tourOption.departureDate}<br></td>
                        <td>Check Out: ${tourOption.returnDate}<br></td>                    	
                        <td><img src="${yelpSearch1.image_url}"></td><br>
                    </tr>
                    
                    <tr>
                    	<td><h5>Your Attraction</h5></td>
                        <td>${yelpSearch2.name}<br></td>
                        <td>${yelpSearch2.location.address1}<br></td>
                        <td>${yelpSearch2.location.city}<br></td>
                        <td>${yelpSearch2.location.state}<br></td>
                        <td>${yelpSearch2.location.zip_code}<br></td>
                        <td>${yelpSearch2.location.country}<br></td>
                        <td>${yelpSearch2.rating}<br></td>
                        <td>${yelpSearch2.phone}<br></td>
                        <td><img src="${yelpSearch2.image_url}"></td><br>

					</tr>
                       	<td><h1>Only $${adjustedPrice}/person!</h1></td>
						<input type="submit" name="suggestionSelection" value="Select"><br>
                      	</form>
                    </div>
    </div>



</body>
</html>