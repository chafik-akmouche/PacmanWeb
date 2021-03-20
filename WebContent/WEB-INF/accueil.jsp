<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title> Accueil </title>
	</head>

<body>

	<h1> Page Accueil </h1>
		
		<ul>
			<li> 
				<a href="#"> 
					<c:if test="${!empty sessionScope.sessionUtilisateur}">
		             	<p> ${sessionScope.sessionUtilisateur.pseudo} </p>
		        	</c:if>
				</a> 
			</li>
			
			<li> <a href="/PacmanWeb/deconnexion"> Déconnexion </a> </li>
		</ul>

</body>
</html>