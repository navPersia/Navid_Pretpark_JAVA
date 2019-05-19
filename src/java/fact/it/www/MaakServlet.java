/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fact.it.www;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import fact.it.www.beans.*;
import javax.servlet.RequestDispatcher;
import java.util.*;
import javax.servlet.http.HttpSession;
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
        HttpSession session = request.getSession();
        String button = request.getParameter("button");
        ArrayList <Pretpark> pretparken = (ArrayList <Pretpark>) session.getAttribute("pretparken");
        ArrayList<Bezoeker> bezoekers = (ArrayList<Bezoeker>) session.getAttribute("bezoekers");
        ArrayList<Personeelslid> personeelsleden = (ArrayList <Personeelslid>) session.getAttribute("personeelsleden");
        if (button.equals("bezoekerZonderPretparkregistratie")){
            /*
            String checkboxOne = request.getParameter("checkboxOne");
            */
            String name = request.getParameter("name");
            String lastName = request.getParameter("lastname");
            String park = request.getParameter("park");
            bezoekers.add(new Bezoeker(name, lastName));
            session.setAttribute("bezoekers", bezoekers);

            if (park.equals("None")){
                ;
            }/*else {
                bezoeker.voegToeAanWishlist(pretpark);
            }/*
            /*
            if (checkboxOne != null){
                bezoeker.setPretparkcode(-1);
            }else{
                bezoeker.setPretparkcode(1000);
            }
            */

            Persoon persoon = new Persoon(name, lastName);

            RequestDispatcher rd = request.getRequestDispatcher("welkom.jsp");
            request.setAttribute("persoon", persoon);
            rd.forward(request, response);
        }
        if (button.equals("bezoekerMetPretparkregistratie")){
            int grootte = Integer.parseInt(request.getParameter("pretparknaam"));
            String name = request.getParameter("name");
            String lastName = request.getParameter("lastname");
            String park = request.getParameter("park");

            Pretpark pretpark = pretparken.get(grootte);
            Bezoeker bezoeker = new Bezoeker(name, lastName);
            pretpark.registreerBezoeker(bezoeker);
            bezoekers.add(bezoeker);
            /*
            Pretpark pretpark = new Pretpark(pretparknaam);
            Bezoeker bezoeker = new (name, lastName);
            pretpark.registreerBezoeker(bezoeker);
            */
            RequestDispatcher rd = request.getRequestDispatcher("welkom.jsp");
            session.setAttribute("bezoekers", bezoekers);
            rd.forward(request, response);
        }
        if (button.equals("nieuwpretpark")){
            String park = request.getParameter("park");
            Pretpark pretpark = new Pretpark(park);
            pretparken.add(pretpark);
            RequestDispatcher rd = request.getRequestDispatcher("nieuweattractie.jsp");
            session.setAttribute("pretparken", pretparken);
            rd.forward(request, response);
        }
        if (button.equals("nieuweattractie")){
            String name = request.getParameter("name");
            String fotonaam = request.getParameter("fotonaam");
            long duur = Long.parseLong(request.getParameter("duur"));
            int index = pretparken.size() -1;
            int verantwordelijk = Integer.parseInt(request.getParameter("verantwordelijk"));
            Personeelslid personeelslid = personeelsleden.get(verantwordelijk);

            Pretpark pretpark = pretparken.get(index);
            Attractie attractie1 = new Attractie(name, duur);
            attractie1.setVerantwoordelijke(personeelslid);
            attractie1.setFoto(fotonaam);
            pretpark.voegAttractieToe(attractie1);
            pretparken.remove( pretparken.size() - 1 );
            pretparken.add(pretpark);

            Attractie attractie2 = new Attractie("flashback");
            attractie2.setFoto("flashback.jpg");
            Attractie attractie3 = new Attractie("underground");
            attractie3.setFoto("underground.jpg");
            Attractie attractie4 = new Attractie("cobra");
            attractie4.setFoto("cobra.jpg");
            Attractie attractie5 = new Attractie("pulsar");
            attractie5.setFoto("pulsar.jpg");

            RequestDispatcher rd = request.getRequestDispatcher("Parkwelkom.jsp");
            request.setAttribute("name2", attractie2.getNaam());
            request.setAttribute("img2", attractie2.getFoto());
            request.setAttribute("name3", attractie3.getNaam());
            request.setAttribute("img3", attractie3.getFoto());
            request.setAttribute("name4", attractie4.getNaam());
            request.setAttribute("img4", attractie4.getFoto());
            request.setAttribute("name5", attractie5.getNaam());
            request.setAttribute("img5", attractie5.getFoto());
            request.setAttribute("indexs", "1");
            session.setAttribute("pretparken", pretparken);
            rd.forward(request, response);
        }
        if (button.equals("sessionpark")){
            int index = Integer.parseInt(request.getParameter("index"));

            Attractie attractie2 = new Attractie("flashback");
            attractie2.setFoto("flashback.jpg");
            Attractie attractie3 = new Attractie("underground");
            attractie3.setFoto("underground.jpg");
            Attractie attractie4 = new Attractie("cobra");
            attractie4.setFoto("cobra.jpg");
            Attractie attractie5 = new Attractie("pulsar");
            attractie5.setFoto("pulsar.jpg");

            RequestDispatcher rd = request.getRequestDispatcher("Parkwelkom.jsp");
            request.setAttribute("name2", attractie2.getNaam());
            request.setAttribute("img2", attractie2.getFoto());
            request.setAttribute("name3", attractie3.getNaam());
            request.setAttribute("img3", attractie3.getFoto());
            request.setAttribute("name4", attractie4.getNaam());
            request.setAttribute("img4", attractie4.getFoto());
            request.setAttribute("name5", attractie5.getNaam());
            request.setAttribute("img5", attractie5.getFoto());
            request.setAttribute("index", index);
            request.setAttribute("indexs", "indexs");
            rd.forward(request, response);
        }
        if (button.equals("nieuwpersoonlid")){
            String voornaam1 = request.getParameter("voornaam");
            String achternaam1 = request.getParameter("achternaam");
            /*------------------------------------------------------------------*/
            /*
            ArrayList<Personeelslid> check = (ArrayList<Personeelslid>) session.getAttribute("personeelsleden");
            if (check == null){
                ArrayList<Personeelslid> personeelsleden = new ArrayList<>();
            }else{
                ArrayList<Personeelslid> personeelsleden = (ArrayList<Personeelslid>) session.getAttribute("personeelsleden");
            }
            */
            
            personeelsleden.add(new Personeelslid(voornaam1, achternaam1));
            session.setAttribute("personeelsleden", personeelsleden);
            /*-----------------------------------------------------------------*/
            RequestDispatcher rd = request.getRequestDispatcher("welkomtoperson.jsp");
            rd.forward(request, response);
        }
        if (button.equals("search")){
            String pagina = "Notexist.jsp";
            String search = request.getParameter("search");

            for(Pretpark pretpark: pretparken){
                for (Attractie attractie : pretpark.getAttracties()){
                    if(attractie.getNaam().equals(search)){
                        pagina = "Search.jsp";
                    }
                }
            }
            RequestDispatcher rd = request.getRequestDispatcher(pagina);
            request.setAttribute("naam", search);
            rd.forward(request, response);

        }
        if (button.equals("searchAanpassen")){

            String name = request.getParameter("name");
            String duur = request.getParameter("duur");
            String foto = request.getParameter("foto");



   
            RequestDispatcher rd = request.getRequestDispatcher("Search.jsp");
           
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
