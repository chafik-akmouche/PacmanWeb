package fr.pacmanweb.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import fr.pacmanweb.beans.Utilisateur;

public class ConnexionForm {
	private static final String CHAMP_PSEUDO  = "pseudo";
	private static final String CHAMP_PASSWORD   = "password";
	private String resultat;
	private Map <String, String> erreurs = new HashMap <String, String> ();
	
	public String getResultat() {
		return resultat;
	}
	
	public Map <String, String> getErreurs() {
		return erreurs;
	}
	
	public Utilisateur connexionUtilisateur (HttpServletRequest request) {
		String pseudo = getValeurChamp(request, CHAMP_PSEUDO);
		String password = getValeurChamp(request, CHAMP_PASSWORD);
		
		Utilisateur utilisateur = new Utilisateur();
		
		/* Validation du champ pseudo */
		try {
			validationPseudo(pseudo);
		} catch (Exception e) {
			setErreur( CHAMP_PSEUDO, e.getMessage());
		}
		
		utilisateur.setPseudo(pseudo);
		
		/* Validation du champ mot de passe */
        try {
            validationMotDePasse(password);
        } catch (Exception e) {
            setErreur( CHAMP_PASSWORD, e.getMessage() );
        }
        utilisateur.setPassword(password);
        
        /* Initialisation du résultat global de la validation */
        if (erreurs.isEmpty()) {
            resultat = "Connexion réussie";
        } else {
            resultat = "Échec de connexion";
        }

        return utilisateur;
		
	}
	

    /* Ajoute un message correspondant au champ spécifié à la map des erreurs */
    private void setErreur( String champ, String message ) {
        erreurs.put(champ, message);
    }
	
	/* méthode de validation de pseudo */
	private void validationPseudo (String pseudo) throws Exception {
		if (pseudo == null && pseudo.length() <= 3) {
			throw new Exception("Veuillez réessayer.");
		}
	}
	
	/* méthode de validation du mot de passe */
	private void validationMotDePasse (String password) throws Exception {
		if (password != null) {
			if (password.length() < 4) {
				throw new Exception("Le mot de passe doit contenir au moins 3 caractères.");
			}
		}else {
			throw new Exception("Merci de saisir votre mot de passe.");
		}
	}
	
	/* méthode pour récuperer les entrées utilisateur */
	private static String getValeurChamp (HttpServletRequest request, String nomChamp) {
		//recuperer ce que l'utilisateur a saisi dans le champ
		String valeur = request.getParameter(nomChamp);
		if (valeur == null || valeur.trim().length() == 0) {
			return null;
		} else {
			return valeur;
		}
	}

}
