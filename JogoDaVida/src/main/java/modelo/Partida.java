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
    private Boolean partidaAtiva;
    private ArrayList<Integer> jogadores;
    private Integer jogadorTurnoAtual;
    private Integer jogadorVencedor;
}