package fr.pacmanweb.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import fr.pacmanweb.beans.Utilisateur;

public class InscriptionForm {
	public static final String CHAMP_PSEUDO = "pseudo";
    public static final String CHAMP_EMAIL = "email";
    public static final String CHAMP_PASSWORD = "password";
    public static final String CHAMP_CONF_PASSWORD = "conf_password";
    private String resultat;
    
    private Map <String, String> erreurs = new HashMap <String, String> ();
	
	public String getResultat() {
		return resultat;
	}
	
	public Map <String, String> getErreurs() {
	    return erreurs;
	}
	
	public Utilisateur inscriptionUtilisateur (HttpServletRequest request) {
		String pseudo = getValeurChamp(request, CHAMP_PSEUDO);
		String email = getValeurChamp(request, CHAMP_EMAIL);
		String password = getValeurChamp(request, CHAMP_PASSWORD);
		String conf_password = getValeurChamp(request, CHAMP_CONF_PASSWORD);
		
		Utilisateur utilisateur = new Utilisateur();
		
		// Validation du champ pseudo
		try {
			validationPseudo(pseudo);
		} catch (Exception e) {
			setErreur( CHAMP_PSEUDO, e.getMessage());
		}
		utilisateur.setPseudo( pseudo );
		
		
		// Validation du champ email
		try {
			validationEmail(email);
		} catch (Exception e) {
			setErreur( CHAMP_EMAIL, e.getMessage());
		}
		utilisateur.setEmail( email );
		
		
		// Validation du champ password
		try {
			validationPassword(password, conf_password);
		} catch (Exception e) {
			setErreur( CHAMP_PASSWORD, e.getMessage());
			setErreur( CHAMP_CONF_PASSWORD, null );
		}
		utilisateur.setPassword( password );
		
		
		 if ( erreurs.isEmpty() ) {
		        resultat = "Compte créé avec succès. Veuillez vous rediriger vers la page de connexion";
		    } else {
		        resultat = "Échec";
		    }		
		
		return utilisateur;		
	}
	
	
	private void validationEmail(String email) throws Exception {
		if ( email != null ) {
	        if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
	            throw new Exception( "Merci de saisir une adresse mail valide" );
	        }
	    } else {
	        throw new Exception( "Merci de saisir une adresse mail" );
	    }
		
	}

	private void validationPassword(String password, String conf_password) throws Exception {
		if ( password != null && conf_password != null ) {
	        if ( !password.equals( conf_password ) ) {
	            throw new Exception( "Les mots de passe entrés sont différents, merci de les saisir à nouveau" );
	        } else if ( password.length() < 4 ) {
	            throw new Exception( "Les mots de passe doivent contenir au moins 4 caractères" );
	        }
	    } else {
	        throw new Exception( "Merci de saisir et confirmer votre mot de passe" );
	    }
		
	}

	private void validationPseudo(String pseudo) throws Exception {
		if ( pseudo != null && pseudo.length() < 3 ) {
	        throw new Exception( "Le nom d'utilisateur doit contenir au moins 3 caractères" );
	    }
		
	}

	//Ajoute un message correspondant au champ spécifié à la map des erreurs.
	private void setErreur(String champ, String message) {
	    erreurs.put(champ, message);
	}

	private static String getValeurChamp (HttpServletRequest request, String nomChamp) {
		//recuperer ce que l'utilisateur a saisi dans le champ
		String valeur = request.getParameter(nomChamp);
		if (valeur == null || valeur.trim().length() == 0) {
			return null;
		} else {
			return valeur.trim();
		}
	}

}
