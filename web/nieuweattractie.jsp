<%-- 
    Document   : nieuweattractie
    Created on : Apr 2, 2019, 10:09:42 AM
    Author     : Navid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String name = (String) request.getAttribute("name");%>
<%String park = (String) request.getAttribute("park");%>
<html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="css/nieuwebezoeker.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Pretpark project">
    <meta name="author" content="Navid RADKUSHA">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
</head>
<body>
<!-- Form pagina -->
<div class="container">
    <form action="MaakServlet" method="get">
        <p hidden="True">
            <input name="park" value="<%=park%>">
        </p>
        <p>
            <label class="label-schrijf" for="name"><i class="fas fa-pencil-alt"></i>Naam van attractie<sup>*</sup></label>
            <input class="schrijf" type="text" id="name" name="name" placeholder="Naam van attractie" autofocus required>
        </p>

        <p>
            <label class="label-schrijf" for="duur"><i class="fas fa-pencil-alt"></i>Duur<sup>*</sup></label>
            <input class="schrijf" type="text" id="duur" name="duur" placeholder="Duur">
        </p>

        <p>
            <label class="label-schrijf" for="fotonaam"><i class="fas fa-pencil-alt"></i>De naam van het foto bestand<sup>*</sup></label>
            <input class="schrijf" type="text" id="fotonaam" name="fotonaam" placeholder="De naam van het foto bestand">
        </p>

        <p style="width: 10%; margin: auto; margin-top: 2%">
            <button type="submit" class="knop" name="button" value="nieuweattractie">
                <i class="fab fa-telegram-plane fa-3x"></i>
            </button>
        </p>
    </form>
    <p style="width: 9%; margin: auto; margin-top: 2%"><a class="knop" id="back" href="index.jsp">Back</a></p>
    <p style="padding-left: 30px"><small>*  verplicht velden</small></p>
</div>
</body>
</html>
