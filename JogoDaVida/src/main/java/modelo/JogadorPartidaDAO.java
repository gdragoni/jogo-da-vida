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
    
    public JogadorPartida updateNovaJogada(Integer idJogador, Integer idPartida, Integer posicaoAtual, Double salarioAtual, Double dinheiroAtual, Double promissoriaAtual, Integer acaoNumeroAtual) throws SQLException {
        String sql = "UPDATE JogadorPartida SET "
                + "posicao_atual = " + posicaoAtual + ", "
                + "salario_atual = " + salarioAtual + ", "
                + "dinheiro_atual = " + dinheiroAtual + ", "
                + "promissoria_atual = " + promissoriaAtual + ", "
                + "acao_numero_atual = " + acaoNumeroAtual + " "
                + "WHERE id_jogador = " + idJogador + " "
                + "AND id_partida = " +  idPartida;     
       
        PreparedStatement stm = con.prepareStatement(sql);
        stm.execute();
        
        String sqlReturn = "SELECT * FROM JogadorPartida WHERE id_jogador = " + + idJogador + " " + "AND id_partida = " +  idPartida;
               
        PreparedStatement stm2 = con.prepareStatement(sqlReturn);
        ResultSet rs = stm2.executeQuery();
        
        if(rs != null && rs.next()) {
            JogadorPartida novaJogada = new JogadorPartida(
                rs.getInt("id"),
                rs.getInt("id_jogador"),
                rs.getInt("id_partida"),
                rs.getInt("posicao_atual"),
                rs.getDouble("salario_atual"),
                rs.getDouble("dinheiro_atual"),
                rs.getDouble("promissoria_atual"),
                rs.getInt("acao_numero_atual")
            );
        
            return novaJogada;
        }
                
        return null;
    }
}
