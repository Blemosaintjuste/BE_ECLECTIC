<%@page import="model.User" %>
<%
    User uSession = (User)session.getAttribute("userLoggedSession");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="img/beeclectic.png" type="image/x-icon">
        <link rel="stylesheet" href="css/style.css">
        <script src="https://kit.fontawesome.com/e764f2111b.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <title>MY PLAYLISTS</title>
    </head>
    <body>
        <header>
            <input type="text" placeholder="Search">
            
             <%@include file="session/verify.jsp" %>
        <p class="user">
            Bem vindo <%= (uSession != null)
                            ? uSession.getUserName()
                            : "visitante" %>
            <div class="buttons-logout" >
                            <button onclick="window.location.href='session/logout.jsp'" >Logout</button>
            </div>
        </p>
        
            <div class="logo">
                <a href="./logged.jsp"><img src="img/beeclectic.png"></a>
            </div>
        </header>
        <nav style="background-color: #0095A8">
            <a href="./genres.html" class="buttons-nav">GENRES</a>
            <a href="./shows.html" class="buttons-nav">SHOWS</a>
            <a href="./playlists.html" class="buttons-nav">PLAYLISTS</a>
            <a href="./top10.html" class="buttons-nav">TOP 10</a>
            <a href="./favartists.jsp" class="buttons-nav">FAVORITE ARTISTS</a>
            <a href="./favalbums.jsp" class="buttons-nav">FAVORITE ALBUMS</a>
            <a href="./favsongs.jsp" class="buttons-nav">FAVORITE SONGS</a>
            <a href="./myplaylists.jsp" class="buttons-nav">MY PLAYLISTS</a>
            <div class="icons">
                <a href="https://www.facebook.com/"target="_blank"><i class="fa-brands fa-facebook icons-distance"></i></a>
                <a href="https://twitter.com/"target="_blank"><i class="fa-brands fa-twitter icons-distance"></i></a>
                <a href="https://www.instagram.com/"target="_blank"><i class="fa-brands fa-instagram icons-distance"></i></a>
                 <a href="https://www.youtube.com/"target="_blank"> <i class="fa-brands fa-youtube"></i></a>
            </div> 
        </nav>
        
        <aside>
           
        </aside>
        <main>
            
        </main>
        

        <footer>
            <a href="about.html" class="buttons-footer">About Be Eclectic</a>
            <a href="contact.html" class="buttons-footer">Contact Us</a>
            <a href="privacy.html" class="buttons-footer">Privacy Policy</a>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    </body>
</html>

