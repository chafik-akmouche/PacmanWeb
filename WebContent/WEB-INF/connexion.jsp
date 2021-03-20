<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<title> Connexion </title>
	</head>
	
<body>

	<div class="container">
		<h1> Connexion </h1> <br/> <br/>            
		<form action="connexion" method = "post">
			<div class="form-group">
				<label for="username"> Nom d'utilisateur </label>
				<input type="text" class="form-control" value="<c:out value="${utilisateur.pseudo}"/>" name="pseudo" id="pseudo" placeholder="Pseudo ..." required />
				 <span class="erreur">${form.erreurs['pseudo']}</span>
			</div> <br/>
			<div class="form-group">
				<label for="nom"> Mot de passe </label>
				<input type="password" class="form-control" name="password" id="password" required />
			</div> <br/>
			<div class="form-group">
				<button class="btn btn-primary" type="submit">Connexion</button>
			</div>
			<div class="form-group">
				<label class="form-check-label" for="inscription"> Vous n'êtes pas encore inscrit ! </label>
				<a href="/PacmanWeb/inscription"><label class="form-check-label" for="inscription"> Inscrivez-vous maintenant </label></a>
			</div>     
		</form>
	</div>
	
</body>
</html>