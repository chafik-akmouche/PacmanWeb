<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
		<title> Accueil </title>
		
	</head>

<body>
<div class="container">


<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/PacmanWeb/index">Pacman</a>
			</div>
		
			<ul class="nav navbar-nav">
				<li><a href="/PacmanWeb/index"><span class="glyphicon glyphicon-home"></span> Home </a></li>
				<li><a href="/PacmanWeb/telechargement"><span class="glyphicon glyphicon-download-alt"></span> Téléchargement </a></li>
			</ul>
			
			<c:if test="${!empty sessionScope.sessionUtilisateur}">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/PacmanWeb/accueil"><span class="glyphicon glyphicon-user"></span> ${sessionScope.sessionUtilisateur.pseudo} </a></li>
				<li><a href="/PacmanWeb/deconnexion"><span class="glyphicon glyphicon-log-out"></span> Déconnexion </a></li>
			</ul>
			</c:if>
			
		</div>
	</nav>
		
		
		
		<h2> Historique de mes parties jouées </h2> <br/>
		
		<table class="table table-striped">
        <thead>
          <tr>
            <!-- <th>ID</th>-->
            <th>Joueur</th>
            <th>Score obtenu</th>
            <th>Date de la partie</th>
          </tr>
        </thead>
        <c:forEach var="p" items="${ partie }" >
        <tbody>
          <tr>
            <!-- <td> <c:out value="${ p.id }"/> </td>-->
            <td> <c:out value="${ p.getJoueur() }"/> </td>
            <td> <c:out value="${ p.score }"/> </td>
            <td> <c:out value="${ p.date }"/> </td>
          </tr>
          
        </tbody>
        </c:forEach>
      </table>

	<br/><br/>
	<p>
		<a href="#"> <span class="glyphicon glyphicon-edit"></span> Modifier mes informations </a>
	</p>
	<p>
		<a href="/PacmanWeb/supprimer" style="color:red;"> <span style="color:red;" class="glyphicon glyphicon-remove"></span> Supprimer mon compte </a>
	</p>

</div>
	
</body>
</html>