<%-- 
    Document   : welkom
    Created on : Mar 27, 2019, 3:25:16 PM
    Author     : navid
--%>
<%@page import="java.util.*"%>
<%@page import="fact.it.www.beans.Bezoeker"%>
<%@page import="fact.it.www.beans.Persoon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%Bezoeker bezoeker = (Bezoeker) request.getAttribute("bezoeker");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welkom <%=bezoeker.getVoornaam()%></title>
        <link rel="stylesheet" href="css/welkom.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Pretpark project">
        <meta name="author" content="Navid RADKUSHA">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="stylesheet" href="css/nieuwebezoeker.css">

    </head>
    <body>
        <div>
            <div class="container">
                <h1 style="text-align: center" >Welkom <%=bezoeker.getVoornaam()%></h1>
                <p><%=bezoeker%></p>
                <%if(bezoeker.getWishlist().size() > 0){%>
                <%for (int counter = 0; counter < bezoeker.getWishlist().size(); counter++) {%>
                <p style="padding: 2%">Uw wishlist: </p>
                <p style="padding: 2%"><%=bezoeker.getWishlist().get(counter)%></p>
                <%}%>
                <%}else{%>
                <p style="padding: 2%">Uw hebt geen favoriete attractie gekozen.</p>
                <p style="padding: 2%"><a style="text-align: center; width: 9%; margin: auto; margin-top: 2%" class="knop" id="back" href="Nieuwe bezoeker.jsp">Back</a></p>
                <%}%>
            </div>
        </div>
    </body>
</html>
