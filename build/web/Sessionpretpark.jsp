<%-- 
    Document   : Sessionbezoeker
    Created on : 30-apr-2019
    Author     : Navid
--%>
<%@page import="java.util.*"%>
<%@page import="fact.it.www.beans.*"%>
<%ArrayList<Pretpark> pretparken = (ArrayList<Pretpark>) session.getAttribute("pretparken");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welkom</title>

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
        <h1 style="text-align: center" >Welkom </h1>
        <%if (pretparken == null){%>
        <p>klik eerst op 'opvullen'</p>
        <%}else{%>

        <%for (int j = 0; j < pretparken.size(); j++) {%>
        <form action="MaakServlet" method="get">
            <p hidden="True">
                <input name="index" value="<%=j%>">
            </p>
            <button type="submit" name="button" value="sessionpark"><p><%=pretparken.get(j).getNaam()%></p></button>
        </form>
        <%}}%>


        <p style="padding: 2%"><a style="text-align: center; width: 9%; margin: auto; margin-top: 2%" class="knop" id="back" href="index.jsp">Back</a></p>
    </div>
</div>
</body>
</html>
