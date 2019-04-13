<%-- 
    Document   : Parkwelkom
    Created on : Apr 2, 2019, 11:16:25 AM
    Author     : Navid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String park = (String) request.getAttribute("park");%>
<%String name = (String) request.getAttribute("name");%>
<%String name2 = (String) request.getAttribute("name2");%>
<%String name3 = (String) request.getAttribute("name3");%>
<%String name4 = (String) request.getAttribute("name4");%>
<%String name5 = (String) request.getAttribute("name5");%>
<%String img1 = (String) request.getAttribute("img1");%>
<%String img2 = (String) request.getAttribute("img2");%>
<%String img3 = (String) request.getAttribute("img3");%>
<%String img4 = (String) request.getAttribute("img4");%>
<%String img5 = (String) request.getAttribute("img5");%>
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
<body id="welkom">
<div>
    <div class="container">
        <h1 style="text-align: center">Welkom</h1>
        <h3 style="padding: 2%">Attracties:</h3>
        <div>
            <div class="responsive">
                <div class="gallery">
                    <a>
                        <img class="myImg" id="myImg1" src="image/<%=img1%>" alt="<%=name%>" style="width:100%;max-width:300px" onerror="this.src='image/geenfoto.jpg';alt='no photo available'">
                    </a>
                    <div class="desc"><%=name%></div>
                </div>
            </div>


            <div class="responsive">
                <div class="gallery">
                    <a>
                        <img class="myImg" id="myImg2" src="image/<%=img2%>" alt="<%=name2%>" width="480" height="320" style="width:100%;max-width:300px" onerror="src='image/geenfoto.jpg'">
                    </a>
                    <div class="desc"><%=name2%></div>
                </div>
            </div>

            <div class="responsive">
                <div class="gallery">
                    <a>
                        <img class="myImg" id="myImg3" src="image/<%=img3%>" alt="<%=name3%>" width="480" height="320" style="width:100%;max-width:300px" onerror="src='image/geenfoto.jpg'">
                    </a>
                    <div class="desc"><%=name3%></div>
                </div>
            </div>

            <div class="responsive">
                <div class="gallery">
                    <a>
                        <img class="myImg" id="myImg4" src="image/<%=img4%>" alt="<%=name4%>" width="480" height="320" style="width:100%;max-width:300px" onerror="src='image/geenfoto.jpg'">
                    </a>
                    <div class="desc"><%=name4%></div>
                </div>
            </div>

            <div class="responsive">
                <div class="gallery">
                    <a>
                        <img class="myImg" id="myImg5" src="image/<%=img5%>" alt="<%=name5%>" width="480" height="320" style="width:100%;max-width:300px" onerror="src='image/geenfoto.jpg'">
                    </a>
                    <div class="desc"><%=name5%></div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>
        <h3 style="padding: 2%">naam van pretpark:</h3>
        <p style="padding: 1%"><%=park%></p>
        <p style="padding: 2%; width: 9%; margin: auto; margin-top: 2%"><a style="text-align: center" class="knop" id="back" href="index.jsp">Home</a></p>
    </div>
</div>

<!-- The Modal -->
<div id="myModal" class="modal">
    <span class="close">&times;</span>
    <img class="modal-content" id="img01">
    <div id="caption"></div>
</div>
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
    img2.onclick = function(){
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
    }
    img3.onclick = function(){
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
    }
    img4.onclick = function(){
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
    }
    img5.onclick = function(){
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

