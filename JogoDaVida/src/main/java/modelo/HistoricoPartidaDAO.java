/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author gdragoni
 */
public class HistoricoPartidaDAO extends DAO {
    
    public HistoricoPartidaDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
    public void insertHistorico(Integer idPartida, String descricao) throws SQLException {
        String sql = "INSERT INTO HistoricoPartida (id_partida, descricao) VALUES ("+idPartida+", '"+descricao+"')";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.execute();
    }
    
    public void insertHistorico(Integer idPartida, String descricao, Integer jogador) throws SQLException {
        String sql = "INSERT INTO HistoricoPartida (id_partida, descricao, id_jogador) VALUES ("+idPartida+", '"+descricao+"', "+jogador+")";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.execute();
    }
}
