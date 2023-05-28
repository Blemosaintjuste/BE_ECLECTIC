<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Álbuns Favoritos</title>
    </head>
    <body>
        <h1>Cadastro</h1>
        <hr>
        <form action="CadastroAlbunsFavoritos" method="post">
            <h3>Novo Álbum Favoritos</h3>
            <input type="text" name="albumfavorito" placeholder="Nome do Album Favorito">
            <input type="text" name="artista" placeholder="Nome do Artista">
            
            <input type="submit" value="cadastrar" ><hr><br>
            
            
        </form>
        <a href="index.html" >Pagina inicial</a>
        
    </body>
</html>
