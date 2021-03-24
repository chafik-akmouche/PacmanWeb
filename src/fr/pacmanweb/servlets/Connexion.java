package fr.pacmanweb.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.pacmanweb.beans.Utilisateur;
import fr.pacmanweb.forms.ConnexionForm;

@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ATT_SESSION_UTILISATEUR = "sessionUtilisateur";
	private static final String ATT_FORM = "form";
	private static final String ATT_UTILISATEUR = "utilisateur";
	private static final String VUE = "/WEB-INF/connexion.jsp";

    public Connexion() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 /* Récupération de la session depuis la requête */
        HttpSession session = request.getSession();

         // Si l'objet utilisateur n'existe pas dans la session en cours, alors
         // l'utilisateur n'est pas connecté.
        if ( session.getAttribute( ATT_SESSION_UTILISATEUR ) == null ) {
            /* Redirection vers la page publique */
        	this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
        } else {
            /* Affichage de la page restreinte */
        	response.sendRedirect("/PacmanWeb/accueil");
        }
		
        System.out.println("je suis la servlet connexion");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* Préparation de l'objet formulaire */
        ConnexionForm form = new ConnexionForm();
        
        /* Traitement de la requête et récupération du bean en résultant */
        Utilisateur utilisateur = form.connexionUtilisateur(request);

        HttpSession session = request.getSession();
        
        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_UTILISATEUR, utilisateur);
        
        // Si aucune erreur de validation n'a eu lieu, alors ajout du bean
        // Utilisateur à la session, sinon suppression du bean de la session.
        if (form.getErreurs().isEmpty()) {
            session.setAttribute(ATT_SESSION_UTILISATEUR, utilisateur);
            response.sendRedirect("/PacmanWeb/accueil");
        } else {
            session.setAttribute(ATT_SESSION_UTILISATEUR, null);
            this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
        }
	}

}
