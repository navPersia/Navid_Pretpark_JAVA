<%-- 
    Document   : index
    Created on : Mar 27, 2019, 11:50:29 AM
    Author     : navid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Start page</title>
        <link rel="stylesheet" href="css/welkom.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Pretpark project">
        <meta name="author" content="Navid RADKUSHA">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="stylesheet" href="css/nieuwebezoeker.css">
    </head>
    <body>
    <form action="MaakServlet" method="get">
        <input type="text" placeholder="Search.." name="search">
        <button type="submit" name="button" value="search"><i class="fa fa-search"></i></button>
    </form>
            <p style="text-align: center; margin-top: 10%"><a class="startknoop" href="Nieuwe bezoeker.jsp">Nieuwe bezoeker</a></p>
            <p style="text-align: center; margin-top: 5%"><a class="startknoop" href="Nieuwpretpark.jsp">Nieuw pretpark</a></p>
            <p style="text-align: center; margin-top: 5%"><a class="startknoop" href="nieuwpersoonlid.jsp">Nieuw persoonlid</a></p>
            <form style="text-align: center; margin-top: 5%" action="OpvulServlet" method="get">
                <button class="startknoop" type="submit" name="button" value="opvullen">
                    <a><small>opvullen</small></a>
                </button>
            </form>
            <p style="text-align: center; margin-top: 5%"><a class="startknoop" href="Sessionbezoeker.jsp">Bezoekers in session</a></p>
            <p style="text-align: center; margin-top: 5%"><a class="startknoop" href="Sessionpretpark.jsp">Pretpark in session</a></p>
    </body>
</html>
