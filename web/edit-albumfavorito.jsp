<%@page import="model.AlbunsFavoritos"%>

<%
    AlbunsFavoritos art = (AlbunsFavoritos)request.getAttribute("albumfavorito");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Artista Favorito</title>
    </head>
    <body>
        <h1>Edição</h1>
        <hr>
        <form action="CadastroAlbunsFavoritos" method="post">
            <input type="text" name="id" value="<%= art.getId_albunsfavoritos() %>" readonly>
            <br><br>
            
            <input type="text" name="albumfavorito" value="<%= art.getNome() %>" placeholder="Nome do Álbum">
            <input type="text" name="artista" value="<%= art.getArtista() %>" placeholder="Artista">
            <br><br>  
            <br><br>
            <input type="submit" value="Finalizar edição" >
            <input type="reset" value="Restaurar">
            <hr><br>
            
            
        </form>
        <a href="index.html" >Pagina inicial</a>
        
    </body>
</html>



