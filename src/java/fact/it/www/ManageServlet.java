/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fact.it.www;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import fact.it.www.beans.Persoon;
import fact.it.www.beans.Personeelslid;
import fact.it.www.beans.Bezoeker;
import fact.it.www.beans.Pretpark;
import fact.it.www.beans.Attractie;
/**
 *
 * @author navid
 */
@WebServlet(name = "ManageServlet", urlPatterns = {"/ManageServlet"})
public class ManageServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String voorNaam = "Navid";
        String achterNaam = "Radkusha";
        String personeelVoorNaam = "Sam";
        String personeelAchterNaamm = "Smith";
        Persoon persoon = new Persoon(voorNaam, achterNaam);
        Personeelslid personeelslid1 = new Personeelslid(personeelVoorNaam, personeelAchterNaamm);
        personeelVoorNaam = "Sarah";
        personeelAchterNaamm = "Big";
        Personeelslid personeelslid2 = new Personeelslid(personeelVoorNaam, personeelAchterNaamm);
        String bezoekerVoorNaam = "David";
        String bezoekerAchterNaam = "Hamburger";
        Bezoeker bezoeker1 = new Bezoeker(bezoekerVoorNaam, bezoekerAchterNaam);
        bezoeker1.setPretparkcode(001);
        String[] names = {"Walibi", "aualibi","polopsaland", "Europapark"};
        for (String i : names) {
            bezoeker1.voegToeAanWishlist(i);
        }
        
        bezoekerVoorNaam = "Stefan";
        bezoekerAchterNaam = "Hamburger";
        Bezoeker bezoeker2 = new Bezoeker(bezoekerVoorNaam, bezoekerAchterNaam);
        bezoeker2.setPretparkcode(002);
        String[] names2 = {"Walibi", "aualibi","polopsaland", "Europapark", "bobialand"};
        for (String i : names2) {
            bezoeker2.voegToeAanWishlist(i);
        }
        Pretpark pretpark = new Pretpark("Walibi");
        Attractie attractie1 = new Attractie("waliBELGIE");
        Attractie attractie2 = new Attractie();
        attractie1.setVerantwoordelijke(personeelslid1);
        attractie2.setVerantwoordelijke(personeelslid2);
        Attractie attractie3 = new Attractie();
        attractie3.setVerantwoordelijke(personeelslid2);
        pretpark.voegAttractieToe(attractie1);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ManageServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Navid RADUSHA MiniProject" + "</h1>");
            out.println("<p> <hr>" + "</p>");
            out.println("<p>Persoon: " + persoon + "</p>");
            out.println("<p> </p>");
            out.println("<p>" + personeelslid1 + "</p>");
            out.println("<p>" + personeelslid2 + "</p>");
            out.println("<p>" + bezoeker1 + "</p>");
            out.println("<p>" + "Wishlist van bezoeker1: " + bezoeker1.getWishlist() +"</p>");
            out.println("<p>" + bezoeker2 + "</p>");
            out.println("<p>" + "Wishlist van bezoeker2: " + bezoeker2.getWishlist() +"</p>");
            out.println("<p>" + "verantwoordelijke1: " + attractie1.getVerantwoordelijke() +"</p>");
            out.println("<p>" + "verantwoordelijke2: " + attractie2.getVerantwoordelijke() +"</p>");
            out.println("<p>" + "verantwoordelijke3: " + attractie3.getVerantwoordelijke() +"</p>");
            out.println("<p>" + "pretpark: " + pretpark.getNaam() +"</p>");
            out.println("<p>" + "get attractie: " + pretpark.getAttracties() +"</p>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
