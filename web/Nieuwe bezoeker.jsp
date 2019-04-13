<%-- 
    Document   : Nieuwe bezoeker
    Created on : Mar 27, 2019, 12:19:09 PM
    Author     : navid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

                <p>
                    <label class="label-schrijf" for="name"><i class="fas fa-pencil-alt"></i>Voornaam<sup>*</sup></label>
                    <input class="schrijf" type="text" id="name" name="name" placeholder="schrijf hier uw naam" autofocus required>
                </p>

                <p>
                    <label class="label-schrijf" for="lastname"><i class="fas fa-pencil-alt"></i>Achternaam<sup>*</sup></label>
                    <input class="schrijf" type="text" id="lastname" name="lastname" placeholder="schrijf hier uw achternaam">
                </p>
                <%--
                <ul class="ks-cboxtags" id="chekboks">
                    <li><input type="checkbox" id="checkboxOne" name="checkboxOne" value="tik">
                        <label for="checkboxOne">Eerste keer</label></li>
                </ul>
                --%>
                <p class="custom-dropdown">
                <select name="park">
                <%String[] namen = {"None", "Walibi", "Plopsoland", "Bobbejaaland", "Comics station Antwerpen"};%>
                <%for (String naam : namen) {%>
                    <option value="<%=naam%>"><%=naam%></option>
                <%}%>
                </select>
                </p>
                <p style="margin-left: 2%">
                <%String[] names = {"Walibi", "Plopsoland", "Bobbejaaland", "Comics station Antwerpen"};%>
                <%for (String name : names) {%>
                    <input type="radio" name="pretparknaam" value="<%=name%>" id="pretparknaam" class="form-radio"><label for="pretparknaam"><%=name%></label>
                <%}%>
                </p>
                <p style="display: flex; margin: auto; width: 70%">
                    <button class="knop" type="submit" name="button" value="bezoekerZonderPretparkregistratie">
                        <small>Bezoeker zonder pretparkregistratie</small></i>
                    </button>
                    <button class="knop" type="submit" name="button" value="bezoekerMetPretparkregistratie">
                        <small>Bezoeker met pretparkregistratie</small></i>
                    </button>
                </p>

            </form>
            <p style="width: 9%; margin: auto; margin-top: 2%"><a class="knop" id="back" href="index.jsp">Back</a></p>
            <p style="padding-left: 30px"><small>* verplicht velden</small></p>
        </div>
    </body>
</html>
