/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fact.it.www.beans;

import java.util.ArrayList;
import fact.it.www.beans.Bezoeker; 

/**
 *
 * @author navid
 */
public class Pretpark {
    private String naam;
    private int aantalBezoekers;
    private ArrayList<Attractie> attracties = new ArrayList<>();
    
    public Pretpark(String naam) {
        this.naam = naam;
    }

    public String getNaam() {
        return naam;
    }

    public void setNaam(String naam) {
        this.naam = naam;
    }

    public ArrayList<Attractie> getAttracties() {
        return attracties;
    }
    
    
    public int getAantalAttracties(){
        int aantal = this.attracties.size();
        return aantal;
    }
    
    public void voegAttractieToe(Attractie attractie){
        this.attracties.add(attractie);
    }
    
    public Attractie zoekAttractieOpNaam(String naam){
        for (int i = 0; i < this.attracties.size(); i++){
                if (this.attracties.get(i).getNaam().equals(naam)){
                    return this.attracties.get(i);
                }
                
        }
        return null;
    }
    
    public void registreerBezoeker(Bezoeker bezoeker){
        this.aantalBezoekers++;
        bezoeker.setPretparkcode(this.aantalBezoekers);
        
    }

}
