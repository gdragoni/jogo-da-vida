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
    
    public ArrayList<Jogador> selectJogadoresPorQuery(String sql) throws SQLException {
        PreparedStatement stm = con.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        
        ArrayList<Jogador> list = new ArrayList<>();
        while(rs.next()){
            list.add(new Jogador(rs.getInt("id"), rs.getString("nome"), rs.getString("senha"), new ArrayList<>()));
        }
        return list;
    }
}
