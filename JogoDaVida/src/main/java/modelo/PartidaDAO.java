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
public class PartidaDAO extends DAO {
    
    public PartidaDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
    public ArrayList<Partida> selectPartidasAtivaPorJogador(Integer jogador) throws SQLException {
        String sql = "SELECT * FROM Partida p "
                + "WHERE p.id IN(SELECT id_partida FROM JogadorPartida WHERE id_jogador="+jogador+")";
        return selectPartidasPorQuery(sql);
    }
    
    public ArrayList<Partida> selectPartidasPorQuery(String sql) throws SQLException {
        PreparedStatement stm = con.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        
        ArrayList<Partida> list = new ArrayList<>();
        while(rs.next()){
            list.add(new Partida(rs.getInt("id"), rs.getBoolean("ativa"), rs.getInt("jogador_turno_atual"), rs.getInt("jogador_vencedor")));
        }
        return list;
    }
}
