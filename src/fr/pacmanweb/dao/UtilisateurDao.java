package fr.pacmanweb.dao;

import fr.pacmanweb.beans.Utilisateur;

public interface UtilisateurDao {
	public static String TABLE_UTILISATEUR = "utilisateur";
	public static String COLONNE_ID = "id";
	public static String COLONNE_EMAIL = "email";
	public static String COLONNE_PASSWORD = "password";
	public static String COLONNE_PSEUDO = "pseudo";
	public static String COLONNE_DATE_INS = "date_inscription";
	
	
	public void inserer(Utilisateur utilisateur) throws DAOException;
	
	// l'authentification se fait via le pseudo ou l'email
	public Utilisateur trouver(String identifiant) throws DAOException;
	
}
