<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title> Connexion Pacman </title>
	</head>
	
	<body>
	
		<form action="connexion" method = "post">
			<p>Nom d'utilisateur : <input type="text" placeholder="Votre nom d'utilisateur ..." name="username" required /></p>
			<p>Mot de passe : <input type="password" placeholder="Votre mot de passe ..." name="password" required /></p>
			<button type="submit">Connexion</button>
		</form>
		
		<p>Vous n'êtes pas encore inscrit !<a href="/PacmanWeb/inscription"> Inscrivez-vous maintenant</a></p>
	
	</body>
</html>