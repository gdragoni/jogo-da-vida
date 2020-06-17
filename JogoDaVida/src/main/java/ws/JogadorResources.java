/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws;

import com.google.gson.Gson;
import java.sql.SQLException;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import modelo.Jogador;
import modelo.JogadorDAO;
import modelo.LoginRequestJson;

/**
 * REST Web Service
 *
 * @author gdragoni
 */
@Path("jogador")
public class JogadorResources {

    @Context
    private UriInfo context;
    private Gson gson;
    private JogadorDAO dao;
    
    public JogadorResources() throws SQLException, ClassNotFoundException  {
        this.gson = new Gson();
        this.dao = new JogadorDAO();
    }
    
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getTodosJogadores(@QueryParam("id_partida") Integer idPartida) throws SQLException, ClassNotFoundException {
        if(idPartida != null) {
            return gson.toJson(dao.selectJogadoresComPartida(idPartida));
        }
        
        return gson.toJson(dao.selectJogadores());
    }
    
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    @Path("login")
    public String postLogin(String json) throws SQLException, ClassNotFoundException {
        LoginRequestJson loginRequestJson = gson.fromJson(json, LoginRequestJson.class);
        Jogador jogador = dao.selectJogadorComNomeSenha(loginRequestJson.getNome(), loginRequestJson.getSenha());
        
        if(jogador == null) {
            return "Usuário ou senha incorreta!";
        }
        
        return gson.toJson(jogador);
    }
}