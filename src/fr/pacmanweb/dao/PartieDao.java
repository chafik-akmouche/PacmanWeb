package fr.pacmanweb.dao;

import java.util.ArrayList;
import java.util.List;

import fr.pacmanweb.beans.Partie;

public interface PartieDao  {
	
	public static String TABLE_PARTIE = "partie";
	public static String COLONNE_ID = "id";
	public static String COLONNE_SCORE = "score";
	public static String COLONNE_DATE = "date";
	
	ArrayList<Partie> getParties() throws DAOException;
}
