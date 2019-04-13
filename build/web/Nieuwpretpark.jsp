<%-- 
    Document   : Nieuwpretpark
    Created on : Apr 2, 2019, 9:29:16 AM
    Author     : Navid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>new park</title>
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
        <p>
            <label class="label-schrijf" for="park"><i class="fas fa-pencil-alt"></i>De naam van park<sup>*</sup></label>
            <input class="schrijf" type="text" id="park" name="park" placeholder="De naam van park">
        </p>
        <p style="width: 10%; margin: auto; margin-top: 2%">
            <button type="submit" class="knop" name="button" value="nieuwpretpark">
                <i class="fab fa-telegram-plane fa-3x"></i>
            </button>
        </p>
    </form>
    <p style="width: 9%; margin: auto; margin-top: 2%"><a class="knop" id="back" href="index.jsp">Back</a></p>
    <p style="padding-left: 30px"><small>*  verplicht velden</small></p>
</div>
</body>
</html>

