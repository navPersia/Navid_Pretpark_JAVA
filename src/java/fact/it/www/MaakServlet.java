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
import javax.servlet.RequestDispatcher;
/**
 *
 * @author navid
 */
@WebServlet(name = "MaakServlet", urlPatterns = {"/MaakServlet"})
public class MaakServlet extends HttpServlet {

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
        String button = request.getParameter("button");
        if (button.equals("bezoekerZonderPretparkregistratie")){
            /*
            String checkboxOne = request.getParameter("checkboxOne");
            */
            String name = request.getParameter("name");
            String lastName = request.getParameter("lastname");
            String park = request.getParameter("park");
            Bezoeker bezoeker = new Bezoeker(name, lastName);
            if (park.equals("None")){
                ;
            }else {
                bezoeker.voegToeAanWishlist(park);
            }
            /*
            if (checkboxOne != null){
                bezoeker.setPretparkcode(-1);
            }else{
                bezoeker.setPretparkcode(1000);
            }
            */
            Persoon persoon = new Persoon(name, lastName);
        
            RequestDispatcher rd = request.getRequestDispatcher("welkom.jsp");
            request.setAttribute("bezoeker", bezoeker);
            request.setAttribute("persoon", persoon);
            rd.forward(request, response);
        }
        if (button.equals("nieuwpretpark")){
            String park = request.getParameter("park");
            RequestDispatcher rd = request.getRequestDispatcher("nieuweattractie.jsp");
            request.setAttribute("park", park);
            rd.forward(request, response);
        }
        if (button.equals("nieuweattractie")){
            String name = request.getParameter("name");
            String fotonaam = request.getParameter("fotonaam");
            String duur = request.getParameter("duur");
            String park = request.getParameter("park");
            
            Attractie attractie1 = new Attractie(name);
            attractie1.setFoto(fotonaam);
            Attractie attractie2 = new Attractie("flashback");
            attractie2.setFoto("flashback.jpg");
            Attractie attractie3 = new Attractie("underground");
            attractie3.setFoto("underground.jpg");
            Attractie attractie4 = new Attractie("cobra");
            attractie4.setFoto("cobra.jpg");
            Attractie attractie5 = new Attractie("pulsar");
            attractie5.setFoto("pulsar.jpg");
            
            RequestDispatcher rd = request.getRequestDispatcher("Parkwelkom.jsp");
            request.setAttribute("name", name);
            request.setAttribute("img1", attractie1.getFoto());
            request.setAttribute("name2", attractie2.getNaam());
            request.setAttribute("img2", attractie2.getFoto());
            request.setAttribute("name3", attractie3.getNaam());
            request.setAttribute("img3", attractie3.getFoto());
            request.setAttribute("name4", attractie4.getNaam());
            request.setAttribute("img4", attractie4.getFoto());
            request.setAttribute("name5", attractie5.getNaam());
            request.setAttribute("img5", attractie5.getFoto());
            request.setAttribute("park", park);
            rd.forward(request, response);
        }
        if (button.equals("nieuwpersoonlid")){
            String voornaam1 = request.getParameter("voornaam");
            String achternaam1 = request.getParameter("achternaam");
            
            Personeelslid personeelslid = new Personeelslid(voornaam1, achternaam1);
            RequestDispatcher rd = request.getRequestDispatcher("welkomtoperson.jsp");
            request.setAttribute("persoon", personeelslid);
            rd.forward(request, response);
        }
        if (button.equals("bezoekerMetPretparkregistratie")){
            String pretparknaam = request.getParameter("pretparknaam");
            String name = request.getParameter("name");
            String lastName = request.getParameter("lastname");
            
            Pretpark pretpark = new Pretpark(pretparknaam);
            Bezoeker bezoeker = new Bezoeker(name, lastName);
            
            pretpark.registreerBezoeker(bezoeker);
            RequestDispatcher rd = request.getRequestDispatcher("welkom.jsp");
            request.setAttribute("bezoeker", bezoeker);
            rd.forward(request, response);
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
