package fr.pacmanweb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import fr.pacmanweb.beans.Partie;

public class PartieDaoImpl implements PartieDao {

	private DAOFactory daoFactory;
	
	 private static final String SQL_SELECT = "SELECT * FROM partie";
	
	// Constructeur
	public PartieDaoImpl(DAOFactory daoFactory) {
		this.daoFactory = daoFactory;
		Connection connexion = null;
	    PreparedStatement preparedStatement = null;
	}
	
	
	@Override
    public ArrayList<Partie> getParties() {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        ArrayList<Partie> parties = new ArrayList<Partie>();

        try {
            connexion = daoFactory.getConnection();
            preparedStatement = DAOUtilitaire.initRequetePreparee(connexion, SQL_SELECT, true);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                parties.add(map(resultSet));
            }
        } catch (SQLException e) {
            throw new DAOException(e);
        } finally {
            DAOUtilitaire.fermeturesSilencieuses(resultSet, preparedStatement, connexion);
        }

        return parties;
    }
	
	
	private Partie map(ResultSet resSet) throws SQLException {
		Partie partie = new Partie();
		
		partie.setId(resSet.getLong(COLONNE_ID));
		partie.setScore(resSet.getInt(COLONNE_SCORE));
		//game.setPlayer(resSet.getString(COLUMN_PLAYER));
		//game.setWinned(resSet.getString(COLUMN_VICTORY) == "TRUE" ? true : false);
		partie.setDate(resSet.getTimestamp(COLONNE_DATE));
		
		return partie;
	}
	

}
