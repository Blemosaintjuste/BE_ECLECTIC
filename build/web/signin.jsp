<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/beeclectic.png" type="image/x-icon">
    <link href="css/login.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e764f2111b.js" crossorigin="anonymous"></script>
    <title>SIGN IN</title>
</head>

<body>
    <header>
        <input type="text" value="Search" class="input-search">
        <a href="signin.jsp" class="buttons-header">Sign In</a>
        <a href="./signup.html" class="buttons-header">Sign Up</a>
        <div class="logo">
            <a href="./index.html"><img src="img/beeclectic.png"></a>
        </div>
    </header>
    <nav style="background-color: #0095A8">
        <a href="./genres.html" class="buttons-nav">GENRES</a>
        <a href="./shows.html" class="buttons-nav">SHOWS</a>
        <a href="./playlists.html" class="buttons-nav">PLAYLISTS</a>
        <a href="./top10.html" class="buttons-nav">TOP 10</a>
        <div class="icons">
            <a href="https://www.facebook.com/"target="_blank"><i class="fa-brands fa-facebook icons-distance"></i></a>
            <a href="https://twitter.com/"target="_blank"><i class="fa-brands fa-twitter icons-distance"></i></a>
            <a href="https://www.instagram.com/"target="_blank"><i class="fa-brands fa-instagram icons-distance"></i></a>
            <a href="https://www.youtube.com/"target="_blank"> <i class="fa-brands fa-youtube"></i></a>
        </div> 
    </nav>

    <main>
        <div class="form">
            <h1>SIGN IN</h1>
            <a href="https://www.facebook.com/" target="_blank"><img src="img/fc.jpeg"></a><br>
            <a href="https://twitter.com/" target="_blank"><img src="img/tt.jpeg" class="button-social"></a><br>
            <a href="https://gmail.com/" target="_blank"><img src="img/WhatsApp Image 2022-09-27 at 21.36.57.jpeg" class="button-social"></a><br>

            <form method="post" action="Login">
                <fieldset>
                    <p>Be Eclectic login or e-mail</p>
                    <input name="user" id="user" placeholder="Digite seu email" required><br>

                    <p>Password <a href="#">( I forgot my password)</a></p>
                    
                    <input type="password" name="pass" id="pass" placeholder="Digite sua senha" required><br><br>

                    <input type="submit" value="Login">
                </fieldset>
            </form>


            <p class="sign-up">Don't have an account? <a href="#">Sign up here</a></p>
        </div>
    </main>
    <footer>
        <a href="about.html" class="buttons-footer">About Be Eclectic</a>
            <a href="contact.html" class="buttons-footer">Contact Us</a>
            <a href="privacy.html" class="buttons-footer">Privacy Policy</a>
    </footer>

</body>

</html>

