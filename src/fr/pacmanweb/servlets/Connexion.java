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
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* Préparation de l'objet formulaire */
        ConnexionForm form = new ConnexionForm();
        
        /* Traitement de la requête et récupération du bean en résultant */
        Utilisateur utilisateur = form.connexionUtilisateur( request );

        HttpSession session = request.getSession();
        
        /**
         * Si aucune erreur de validation n'a eu lieu, alors ajout du bean
         * Utilisateur à la session, sinon suppression du bean de la session.
         */
        if (form.getErreurs().isEmpty()) {
            session.setAttribute(ATT_SESSION_UTILISATEUR, utilisateur);
        } else {
            session.setAttribute(ATT_SESSION_UTILISATEUR, null);
        }

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_UTILISATEUR, utilisateur );

        this.getServletContext().getRequestDispatcher(VUE).forward( request, response );
        
		
		//String pseudo = request.getParameter("pseudo");
		
		//session.setAttribute("pseudo", pseudo);	
		//response.sendRedirect("http://localhost:8080/PacmanWeb/accueil");
		//this.getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request, response);
	}

}
