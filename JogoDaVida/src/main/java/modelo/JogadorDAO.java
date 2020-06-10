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
public class JogadorDAO extends DAO {
    
    public JogadorDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
    public ArrayList<Jogador> selectJogadores() throws SQLException {
        String sql = "SELECT * FROM Jogador";
        return selectJogadoresPorQuery(sql);
    }
    
    public Jogador selectJogadorComNomeSenha(String nome, String senha) throws SQLException, ClassNotFoundException {
        String sql = "SELECT * FROM Jogador WHERE nome='"+nome+"' AND senha='"+senha+"'";
        ArrayList<Jogador> jogadores = selectJogadoresPorQuery(sql);
        if(jogadores.size() > 0) {
            PartidaDAO partidaDAO = new PartidaDAO();
            Jogador jogador = jogadores.get(0);
            ArrayList<Partida> partidas = partidaDAO.selectPartidasAtivaPorJogador(jogador.getId());
            jogador.setPartidasAtivas(partidas);
        }
        return null;
    }
    
    public ArrayList<Jogador> selectJogadoresPorQuery(String sql) throws SQLException {
        PreparedStatement stm = con.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        
        ArrayList<Jogador> list = new ArrayList<>();
        while(rs.next()){
            list.add(new Jogador(rs.getInt("id"), rs.getString("nome"), rs.getString("senha")));
        }
        return list;
    }
}
