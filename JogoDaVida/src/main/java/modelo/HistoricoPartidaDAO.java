/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
    
    public ArrayList<HistoricoPartida> selectHistorico(Integer idPartida) throws SQLException {
        String sql = "SELECT * FROM HistoricoPartida WHERE id_partida="+idPartida;
        return selectHistoricoPorSQL(sql);
    }
    
    public ArrayList<HistoricoPartida> selectHistorico(Integer idPartida, Integer idJogador) throws SQLException {
        String sql = "SELECT * FROM HistoricoPartida WHERE id_partida="+idPartida+" AND id_jogador="+idJogador;
        return selectHistoricoPorSQL(sql);
    }
    
    public ArrayList<HistoricoPartida> selectHistoricoPorSQL(String sql) throws SQLException {
        PreparedStatement stm = con.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        
        ArrayList<HistoricoPartida> list = new ArrayList<>();
        while(rs.next()){
            list.add(new HistoricoPartida(rs.getInt("id"), rs.getInt("id_partida"), rs.getInt("id_jogador"), rs.getString("descricao"), rs.getDate("data")));
        }
        return list;
    }
}
