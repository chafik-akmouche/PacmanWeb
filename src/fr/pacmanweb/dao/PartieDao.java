package fr.pacmanweb.dao;

import java.util.ArrayList;
import java.util.List;

import fr.pacmanweb.beans.Partie;

public interface PartieDao  {
	
	public static String TABLE_PARTIE = "partie";
	public static String COLONNE_ID = "id";
	public static String COLONNE_SCORE = "score";
	public static String COLONNE_DATE = "date";
	public static String COLONNE_JOUEUR = "pseudo";
	
	//ArrayList<Partie> getParties() throws DAOException;
	ArrayList<Partie> getTop10Parties() throws DAOException;
	ArrayList<Partie> getMesParties(String pseudo) throws DAOException;
}
