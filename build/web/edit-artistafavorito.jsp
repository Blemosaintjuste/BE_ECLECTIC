<%@page import="model.ArtistasFavoritos"%>

<%
    ArtistasFavoritos art = (ArtistasFavoritos)request.getAttribute("artistafavorito");
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
        <form action="CadastroArtistasFavoritos" method="post">
            <input type="text" name="id" value="<%= art.getId_artistasfavoritos() %>" readonly>
            <br><br>
            
            <input type="text" name="artistafavorito" value="<%= art.getNome() %>" placeholder="Nome do Artista">
            <br><br>  
            <br><br>
            <input type="submit" value="Finalizar edição" >
            <input type="reset" value="Restaurar">
            <hr><br>
            
            
        </form>
        <a href="index.html" >Pagina inicial</a>
        
    </body>
</html>


