<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/materia/bootstrap.min.css" />
<link rel ="stylesheet" href="main.css">

</head>
<body>
<div class="container">
	<h1>Vacation or Staycation?</h1>
	
	<form action="vacation-or-staycation">
	<div class="row">
 		 <div class="col-md-6" id="vacation">
			<input type="submit" name="vacationOrStaycation" value="Vacation" class="button1"><br>
		 </div>	
 		 <div class="col-md-6"id="staycation">		 
			<input type="submit" name="vacationOrStaycation" value="Staycation" class="button2"><br>
		 </div>
	</div>
	</form>
</div>
</body>
</html>