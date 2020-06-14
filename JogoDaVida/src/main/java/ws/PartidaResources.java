/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws;

import com.google.gson.Gson;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import modelo.HistoricoPartidaDAO;
import modelo.Jogador;
import modelo.JogadorDAO;
import modelo.JogadorPartidaDAO;
import modelo.Partida;
import modelo.PartidaCriarRequestJson;
import modelo.PartidaDAO;
import modelo.Tabuleiro;

/**
 * REST Web Service
 *
 * @author gdragoni
 */
@Path("partida")
public class PartidaResources {

    @Context
    private UriInfo context;
    private Gson gson;
    private PartidaDAO partidaDAO;
    private JogadorPartidaDAO jogadorPartidaDAO;
    private JogadorDAO jogadorDAO;
    private HistoricoPartidaDAO historicoPartidaDAO;
    
    public PartidaResources() throws SQLException, ClassNotFoundException  {
        this.gson = new Gson();
        this.partidaDAO = new PartidaDAO();
        this.jogadorPartidaDAO = new JogadorPartidaDAO();
        this.jogadorDAO = new JogadorDAO();
        this.historicoPartidaDAO = new HistoricoPartidaDAO();
    }
    
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public String postLogin(String json) throws SQLException, ClassNotFoundException {
        PartidaCriarRequestJson partidaCriarRequestJson = gson.fromJson(json, PartidaCriarRequestJson.class);
        Partida novaPartida = partidaDAO.insertPartida();
        jogadorPartidaDAO.insertJogadores(partidaCriarRequestJson.getJogadores(), novaPartida.getId());
        ArrayList<Jogador> jogadores = jogadorDAO.selectJogadoresComPartida(novaPartida.getId());
        Jogador maiorNumeroJogador = null;
        Integer maiorNumero = 0;
        for(Jogador j : jogadores) {
            Integer numero = Tabuleiro.rodarRoleta();
            while(numero == maiorNumero) {
                numero = Tabuleiro.rodarRoleta();
            }
            if(numero > maiorNumero) {
                maiorNumeroJogador = j;
                maiorNumero = numero;
            }
            historicoPartidaDAO.insertHistorico(novaPartida.getId(), "Decisão de turno inicial: "+j.getNome()+" rodou "+numero, j.getId());
        }
        historicoPartidaDAO.insertHistorico(novaPartida.getId(), "Turno de "+maiorNumeroJogador.getNome());
        novaPartida.setJogadorTurnoAtual(maiorNumeroJogador.getId());
        partidaDAO.updatePartida(novaPartida);
        
        return gson.toJson(novaPartida);
    }
}