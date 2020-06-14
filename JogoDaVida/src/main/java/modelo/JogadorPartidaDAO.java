/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author gdragoni
 */
public class JogadorPartidaDAO extends DAO {
    
    public JogadorPartidaDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
    public void insertJogadores(ArrayList<Integer> jogadores, Integer partidaID) throws SQLException {
        String sql = "INSERT INTO JogadorPartida (id_jogador, id_partida, posicao_atual, salario_atual, dinheiro_atual, promissoria_atual) VALUES ";
        int index = 0;
        for(Integer j : jogadores) {
            if(index != 0) {
                sql+=", ";
            }
            index++;
            sql+="("+j+", "+partidaID+", 0, 0, 10000, 0)";
        }
        PreparedStatement stm = con.prepareStatement(sql);
        stm.execute();
    }
}
