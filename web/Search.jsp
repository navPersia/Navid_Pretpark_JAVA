<%-- 
    Document   : Search
    Created on : 19-mei-2019, 21:25:56
    Author     : Navid
--%>
<%@page import="java.lang.String"%>
<%@page import="java.util.*"%>
<%@page import="fact.it.www.beans.*"%>
<%ArrayList <Pretpark> pretparken = (ArrayList <Pretpark>) session.getAttribute("pretparken");%>
<%ArrayList<Bezoeker> bezoekers = (ArrayList<Bezoeker>) session.getAttribute("bezoekers");%>
<%ArrayList<Personeelslid> personeelsleden = (ArrayList <Personeelslid>) session.getAttribute("personeelsleden");%>
<%String naam = (String) request.getAttribute("naam");%>


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
        <div class="container">
            <h1>Hello!</h1>
            <%Attractie attractie1 = null;%>
        <%for(Pretpark pretpark: pretparken){
            for (Attractie attractie : pretpark.getAttracties()){
                if(attractie.getNaam().equals(naam)){ attractie1 = attractie; %>
                    <p><%attractie.getNaam();%></p>
            <div>
                <div class="responsive">
                    <div class="gallery">
                    <a>
                        <img class="myImg" id="myImg1" src="image/<%=attractie1.getFoto()%>" alt="<%=attractie1.getFoto()%>" style="width:100%;max-width:300px" onerror="this.src='image/geenfoto.jpg';alt='no photo available'">
                    </a>
                    <div class="desc"><%=attractie1.getNaam()%></div>
                </div>
            </div>
            <div class="clearfix"></div>
                <p>Duur van deze attractie is: <%=attractie1.getDuur()%></p>
                <p>voor de naam van foto klik op foto a.u.b!</p>

        <%------------------------------------- to be done later By Navid ------------------------------------------%>

                <form action="MaakServlet" method="get">

                    <p>
                        <label class="label-schrijf" for="name"><i class="fas fa-pencil-alt"></i>Naam van attractie<sup>*</sup></label>
                        <input class="schrijf" type="text" id="name" name="name" placeholder="schrijf hier attractie naam" autofocus required>
                    </p>
                    <p>
                        <label class="label-schrijf" for="foto"><i class="fas fa-pencil-alt"></i>Fotonaam<sup>*</sup></label>
                        <input class="schrijf" type="text" id="foto" name="foto" placeholder="schrijf hier foto naam" autofocus required>
                    </p>
                    <p>
                        <label class="label-schrijf" for="duur"><i class="fas fa-pencil-alt"></i>Duur<sup>*</sup></label>
                        <input class="schrijf" type="text" id="duur" name="duur" placeholder="schrijf hier uw naam" autofocus required>
                    </p>
                    <button type="submit" class="knop" name="button" value="searchAanpassen">
                        <i class="fab fa-telegram-plane fa-3x"></i>
                    </button>
                    <form/>



        <%--------------------------------------- to be done later By Navid ------------------------------------------------------%>


                    <p style="width: 9%; margin: auto; margin-top: 2%"><a class="knop" id="back" href="index.jsp">Back</a></p>
                <%}}}%>
            <div id="myModal" class="modal">
                <span class="close">&times;</span>
                <img class="modal-content" id="img01">
                <div id="caption"></div>
            </div>
            <div/>
            <script>
                // Get the modal
                var modal = document.getElementById('myModal');

                // Get the image and insert it inside the modal - use its "alt" text as a caption
                var img1 = document.getElementById('myImg1');
                var img2 = document.getElementById('myImg2');
                var img3 = document.getElementById('myImg3');
                var img4 = document.getElementById('myImg4');
                var img5 = document.getElementById('myImg5');
                var modalImg = document.getElementById("img01");
                var captionText = document.getElementById("caption");
                img1.onclick = function(){
                        modal.style.display = "block";
                        modalImg.src = this.src;
                        captionText.innerHTML = this.alt;
                    }
                // Get the <span> element that closes the modal
                var span = document.getElementsByClassName("close")[0];

                // When the user clicks on <span> (x), close the modal
                span.onclick = function() {
                    modal.style.display = "none";
                }
            </script>
    </body>

</html>