<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Gambler? - Vacation or Staycation</title>
	<!-- css -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Open+Sans:400,300,700,800" rel="stylesheet" media="screen">
	<link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="/css/style.css" rel="stylesheet" media="screen">
	<link href="/color/default.css" rel="stylesheet" media="screen">
	<link href="/css/app-style.css" rel="stylesheet" media="screen">
</head>
<body id=app-body>
	<h1>Do you like to gamble?</h1>
	<div class="container">
		<form action="gambler">
			<div class="row">
				<div class="col-lg-6">
					<img id="suggestion-wp" src="/img/decision_tree/gambler.jpg">
					<input id="button2" class="btn btn-lg" type="submit" name="gamblerOrNot" value="Yes">
				</div>
				<div class="col-lg-6">
					<img id="suggestion-wp" src="/img/decision_tree/spa.jpg">
					<input id="button3" class="btn btn-lg" type="submit" name="gamblerOrNot" value="No" >
				</div>
			</div>
		</form>
	</div>
</body>
</html>