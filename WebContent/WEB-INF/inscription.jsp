<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title> Inscription </title>
	</head>
	
	<body>
		<form method="post" action="inscription" novalidate>
		<p>Nom d'utilisateur* <input type="text" placeholder="Nom d'utilisateur ..." name="username" id="username" required></p>
		<p>E-mail* : <input type="email" placeholder="Email@exemple.com" name="email" id="email" required></p>
		<p>Date de naissance <input type="date" placeholder="Date de naissance" name="date_nais" id="date_nais"></p>
		<p>Mot de passe* <input type="password" placeholder="Mot de passe" name="pwd" id="pwd" required></p>
		<p>Confirmation mot de passe* <input type="password" placeholder="Confirmation mot de passe " id="confirmation_pwd" name="confirmation_pwd" required></p>
		<button type="submit">Créer mon compte</button>
		</form>
		
		<p>Vous avez déjà un compte !<a href="/PacmanWeb/connexion"> Connectez-vous maintenant</a></p>
	
	</body>
</html>