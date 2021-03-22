<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
	
	<c:if test="${!empty sessionScope.sessionUtilisateur}">
		<p> <a href="/PacmanWeb/accueil"> ${sessionScope.sessionUtilisateur.pseudo} </a> </p>
		<p> <a href="/PacmanWeb/deconnexion"> Déconnexion </a> </p>
	</c:if>
	
	<c:if test="${empty sessionScope.sessionUtilisateur}">
		<p> <a href="/PacmanWeb/connexion"> Connexion </a> </p>
		<p> <a href="/PacmanWeb/inscription"> Inscription </a> </p>
	</c:if>
	
	
		
</body>

</html>