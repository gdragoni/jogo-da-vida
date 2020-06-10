/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author gdragoni
 */
public class Partida {
    private Integer id;
    private Boolean ativa;
    private ArrayList<Integer> jogadores;
    private Integer jogadorTurnoAtual;
    private Integer jogadorVencedor;
    
    public Partida(Integer id, Boolean ativa, Integer jogadorTurnoAtual, Integer jogadorVencedor) {
        this.id = id;
        this.ativa = ativa;
        this.jogadorTurnoAtual = jogadorTurnoAtual;
        this.jogadorVencedor = jogadorVencedor;
    }

    public Integer getId() {
        return id;
    }

    public Boolean getAtiva() {
        return ativa;
    }

    public void setJogadores(ArrayList<Integer> jogadores) {
        this.jogadores = jogadores;
    }

    public ArrayList<Integer> getJogadores() {
        return jogadores;
    }

    public Integer getJogadorTurnoAtual() {
        return jogadorTurnoAtual;
    }

    public Integer getJogadorVencedor() {
        return jogadorVencedor;
    }
}