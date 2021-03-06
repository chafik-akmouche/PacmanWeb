<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		
		<title> Connexion </title>
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
			
			<ul class="nav navbar-nav navbar-right"> 
				<li><a href="/PacmanWeb/connexion"><span class="glyphicon glyphicon-log-in"></span> Connexion </a></li>
				<li><a href="/PacmanWeb/inscription"><span class="glyphicon glyphicon-menu-hamburger"></span> Inscription </a></li>
			</ul>
			
		</div>
	</nav>

	
		<h1> Connexion </h1> <br/> <br/>            
		<form action="connexion" method = "post">
			<div class="form-group">
				<label for="username"> Nom d'utilisateur </label>
				<input type="text" class="form-control" value="" name="pseudo" id="pseudo" placeholder="Pseudo ..." required />
				 <span style="color:red;">${form.erreurs['pseudo']}</span>
			</div> <br/>
			<div class="form-group">
				<label for="nom"> Mot de passe </label>
				<input type="password" class="form-control" value="" name="password" id="password" required />
				<span style="color:red;">${form.erreurs['password']}</span>
				
			</div> <br/>
			<div class="form-group">
				<button class="btn btn-primary" type="submit">Connexion</button>
			</div>
			
			<p class="${empty form.erreurs ? 'alert alert-success' : 'alert alert-danger'}" role="alert">${form.resultat}</p> <br />
			
			<div class="form-group">
				<label class="form-check-label"> Vous n'êtes pas encore inscrit ! </label>
				<a href="/PacmanWeb/inscription"><label class="form-check-label"> Inscrivez-vous maintenant </label></a>
			</div>     
		</form>
		
		<!-- Vérification de la présence d'un objet utilisateur en session -->
        <c:if test="${!empty sessionScope.sessionUtilisateur}">
             <!-- Si l'utilisateur existe en session, alors on affiche son adresse email. -->
             <p class="succes">Vous êtes connecté(e) avec l'adresse : ${sessionScope.sessionUtilisateur.pseudo}</p>
        </c:if>
	</div>
	

</body>
</html>