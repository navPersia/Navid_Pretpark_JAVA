    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fact.it.www.beans;

import java.util.ArrayList;
import fact.it.www.beans.Persoon;

/**
 *
 * @author navid
 */
public class Bezoeker extends Persoon{
    private int pretparkcode;
    private ArrayList<String> wishlist = new ArrayList<>();
    
    public Bezoeker(String voornaam, String familienaam) {
        super(voornaam, familienaam);
        this.pretparkcode = -1;
    }

    public int getPretparkcode() {
        return pretparkcode;
    }

    public ArrayList<String> getWishlist() {
        return wishlist;
    }

    

    public void setPretparkcode(int pretparkcode) {
        this.pretparkcode = pretparkcode;
    }

    public boolean voegToeAanWishlist(String attractienaam){
        if(wishlist.size() < 5){
            wishlist.add(attractienaam);
            return true;
        }
        else{
            return false;
        }
    
    }
    public int getAantalOpWishlist(){
        return this.wishlist.size();
    } 
    
    @Override
    public String toString() {
        return "Bezoeker " + super.toString() +" met pretparkcode " + pretparkcode;
    }

    
}
