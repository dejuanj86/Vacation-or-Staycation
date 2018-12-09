<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />

</head>
<body>

   <div class="column" id="staycation">
    
    			<h1>Close To Home</h1>
                <c:forEach var="y" items="${yelpSearch}">
                    <div id="eachStaycationHotel">
                    	<form action="suggestion-result">
                    <tr>
                        <td>${y.name}<br></td>
                        <td>${y.location}<br></td>
                        <td>${y.rating}<br></td>
                        <td>${y.price}<br></td>                  
                        <td>${y.phone}<br></td>
                        <td>${y.url}<br></td>        
                        <td>${y.imageUrl}</td>
                    </tr>
						<input type="submit" name="suggestionSelection" value="Select"><br>
                      	</form>
                    </div>
                </c:forEach>
    </div>


</body>
</html>