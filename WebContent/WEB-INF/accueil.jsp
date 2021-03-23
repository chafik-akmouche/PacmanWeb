<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<title> Accueil </title>
	</head>

<body>

	<h1> Tableau de bord </h1>
		
		<ul>
			<li> <a href="/PacmanWeb/"> Home </a> </li>
			<li> 
				<a href="#"> 
					<c:if test="${!empty sessionScope.sessionUtilisateur}">
		             	<p> ${sessionScope.sessionUtilisateur.pseudo} </p>
		        	</c:if>
				</a> 
			</li>
			
			<li> <a href="/PacmanWeb/deconnexion"> Déconnexion </a> </li>
		</ul>
		
		<h1> Mon historique des parties jouées </h1>
		<table class="table table-striped">
        <thead>
          <tr>
            <th>ID</th>
            <th>SCORE</th>
            <th>DATE</th>
          </tr>
        </thead>
        <c:forEach var="p" items="${ partie }" >
        <tbody>
          <tr>
            <td> <c:out value="${ p.id }"/> </td>
            <td> <c:out value="${ p.score }"/> </td>
            <td> <c:out value="${ p.date }"/> </td>
          </tr>
          
        </tbody>
        </c:forEach>
      </table>
	
</body>
</html>