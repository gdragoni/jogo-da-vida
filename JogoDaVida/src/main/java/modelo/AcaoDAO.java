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
 * @author leonardoleite
 */
public class AcaoDAO extends DAO {
    public AcaoDAO() throws SQLException, ClassNotFoundException {
        super();
    }
    
    public Acao selectAcao(Integer id) throws SQLException {
        String sql = "SELECT * FROM Acao WHERE id = " + id;
               
        PreparedStatement stm = con.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        
        Acao acao = new Acao(rs.getInt("id"), rs.getString("descricao"));
        
        return acao;
    }
    
    public ArrayList<Acao> selectAcaoPorDescricao(String descricao) throws SQLException {
        String sql = "SELECT * FROM Acao WHERE descricao LIKE " + "%" + descricao + "%";
               
        PreparedStatement stm = con.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        
        ArrayList<Acao> list = new ArrayList<>();
        while(rs.next()){
            list.add(new Acao(rs.getInt("id"), rs.getString("descricao")));
        }
        
        return list;
    }
    
    public void insertAcao(String descricao) throws SQLException {
        String sql = "INSERT INTO Acao (descricao) VALUES(" + descricao + ")";
               
        PreparedStatement stm = con.prepareStatement(sql);
        stm.execute();
    }
    
    public void updateAcao(String descricao) throws SQLException {
        String sql = "UPDATE Acao SET descricao = " + descricao;
               
        PreparedStatement stm = con.prepareStatement(sql);
        stm.execute();
    }
    
    public void deleteAcao(String descricao) throws SQLException {
        String sql = "UPDATE Acao SET descricao = " + descricao;
               
        PreparedStatement stm = con.prepareStatement(sql);
        stm.execute();
    }
}
