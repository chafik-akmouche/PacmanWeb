<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title> Accueil </title>
	</head>

<body>

	<h1> Page Accueil </h1>
	
		<p> Vous êtes ${ sessionScope.pseudo } </p>
		
		<ul>
			<li> <a href="#"> ${ sessionScope.pseudo } </a> </li>
			<li> <a href="/PacmanWeb/deconnexion"> Déconnexion </a> </li>
		</ul>

</body>
</html>