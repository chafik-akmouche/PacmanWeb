package fr.pacmanweb.dao;

import fr.pacmanweb.beans.Utilisateur;

public interface UtilisateurDao {
	public static String TABLE_UTILISATEUR = "utilisateur";
	public static String COLONNE_ID = "id";
	public static String COLONNE_EMAIL = "email";
	public static String COLONNE_PASSWORD = "password";
	public static String COLONNE_PSEUDO = "pseudo";
	public static String COLONNE_DATE_INS = "inscription";
	
	
	public void inserer(Utilisateur utilisateur) throws DAOException;
	/*
	public Utilisateur find(String identifiant) throws DAOException;
	public void updatePwd(Long id,String newPwd); 
	public void updatePseudo(Long id,String pseudo);
	public void updateEmail(Long id,String email);
	public void deleteAccount(String ident);
	*/
	
}
