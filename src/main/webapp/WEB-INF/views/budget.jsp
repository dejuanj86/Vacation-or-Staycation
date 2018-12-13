<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Budget - Vacation or Staycation</title>
	<!-- css -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Open+Sans:400,300,700,800" rel="stylesheet" media="screen">
	<link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="/css/style.css" rel="stylesheet" media="screen">
	<link href="/color/default.css" rel="stylesheet" media="screen">
	<link href="/css/app-style.css" rel="stylesheet" media="screen">
</head>
<body id="app-body">
	<div class="container">
	<h1>What is your budget level?</h1>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
	</br>
		<form action="budget">
			<div class="row">
				<div class="col-lg-3">
					<input id="button1" class="btn btn-lg" type="submit" name="priceLevel" value="$">
				</div>
				<div class="col-lg-3">
					<input id="button1" class="btn btn-lg" type="submit" name="priceLevel" value="$$" >
				</div>
			
				<div class="col-lg-3">
					<input id="button1" class="btn btn-lg" type="submit" name="priceLevel" value="$$$" >
				</div>
				<div class="col-lg-3">
						<input id="button1" class="btn btn-lg" type="submit" name="priceLevel" value="$$$$" >
				</div>
		</form>
	</div>
</body>
</html>