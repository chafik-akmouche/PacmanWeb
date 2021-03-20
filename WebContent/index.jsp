<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title> Pacman </title>
	</head>
	
<body>
<!-- Première page qui s'affiche à l'utilisateur elle contenir connexion, déconnexion-->
<!-- classement des meilleur parties jouées ... -->
	
	<h1>Bienvenu au Célèbre jeu Pacman</h1>
	<p> Vous êtes ${ sessionScope.pseudo } </p>
	
	<p> <a href="/PacmanWeb/connexion"> Connexion </a> </p>
	<p> <a href="/PacmanWeb/inscription"> Inscription </a> </p>
	
</body>

</html>