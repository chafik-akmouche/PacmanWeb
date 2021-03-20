<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<title> Inscription </title>
	</head>
	
	<body>
	
	
	
	<div class="container">
		<h1> Inscription </h1> <br/> <br/>            
		<form action="inscription" method = "post">
			<div class="form-group">
				<label for="username"> Nom d'utilisateur* </label>
				<input type="text" class="form-control" name="pseudo" id="pseudo" placeholder="Pseudo ..." required /> 
			</div> <br/>
			
			<div class="form-group">
				<label for="email"> Email* </label>
				<input type="email" class="form-control" name="email" id="email" placeholder="Adresse mail" required /> 
			</div> <br/>
			
			<div class="form-group">
				<label for="password"> Mot de passe* </label>
				<input type="password" class="form-control" value="" name="password" id="password" required />
			</div> <br/>
			
			<div class="form-group">
				<label for="conf_password"> Confirmation mot de passe* </label>
				<input type="password" class="form-control" value="" name="conf_password" id="conf_password" required />
			</div> <br/>
			
			<div class="form-group">
				<button class="btn btn-primary" type="submit">Inscription</button>
			
			</div>
			<div class="form-group">
				<label class="form-check-label" for="connexion"> Vous avez déjà un compte ? </label>
				<a href="/PacmanWeb/connexion"><label class="form-check-label" for="connexion"> Connectez-vous maintenant </label></a>
			</div>     
		</form>
	</div>
	
	</body>
</html>