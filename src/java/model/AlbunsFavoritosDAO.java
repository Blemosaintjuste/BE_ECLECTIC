package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AlbunsFavoritosDAO {
    private static Connection conn;
    
    public AlbunsFavoritosDAO() throws ClassNotFoundException, SQLException {
        conn = MyDatabase.getDatabase();
    }
    
     public void insertAlbunsFavoritos(AlbunsFavoritos a) throws SQLException{
        //Criando a query para inserir o registro
        String query = "INSERT INTO albuns_favoritos(nome, artista)"
                + "VALUES(?, ?)";
        
        //Preparar a query para ser executada no BD
        PreparedStatement prep = conn.prepareStatement(query);
        
        prep.setString(1, a.getNome());
        prep.setString(2, a.getArtista());
     
        //Executando a query pronta
        prep.execute();
        prep.close();
    }
     
     //SELECT
    public ArrayList<AlbunsFavoritos> listAll() throws SQLException {
        //Criar lista vazia
        ArrayList<AlbunsFavoritos> list = new ArrayList<>();
        
        //Criar query para pesquisa no BD
        String query = "SELECT * FROM albuns_favoritos";
        
        //Preparar query para executar no BD
        PreparedStatement prep = conn.prepareStatement(query);
        
        //Pegar o resultado da pesquina no BD
        ResultSet res = prep.executeQuery();
        
        //Varrer "res" mapeando os registros do BD
        //Para objetos da classe "Artista"
        while(res.next()) {
            //Criar objeto Artista vazio
            AlbunsFavoritos art = new AlbunsFavoritos();
            
            //Inserir os valores nos atributos com
            //os dados vindos das colunas do BD
            art.setId_albunsfavoritos(res.getInt("id_albunsfavoritos"));
            art.setNome(res.getString("nome"));
            art.setArtista(res.getString("artista"));
            
            //Inserir o objeto completo na lista
            list.add(art);
        }
        
        //Retornar lista cheia
        return list;
    }
    
     
    //SELECT
    public AlbunsFavoritos listById(int i) throws SQLException {
        String query = "SELECT * FROM albuns_favoritos "
                + "WHERE id_albunsfavoritos = " + i;
        
        PreparedStatement prep = conn.prepareStatement(query);
        ResultSet res = prep.executeQuery();
        
        AlbunsFavoritos art = new AlbunsFavoritos();
        
        if(res.next()) {
            art.setId_albunsfavoritos(res.getInt("id_albunsfavoritos"));
            art.setNome(res.getString("nome"));
            art.setArtista(res.getString("artista"));
            
        }
        
        return art;
    }
     //UPDATE
    public void updateAlbunsFavoritos(AlbunsFavoritos art) throws SQLException {
        String query = "UPDATE albuns_favoritos SET nome = ?,"
                + "artista = ? WHERE id_albunsfavoritos = ?";
        
        PreparedStatement prep = conn.prepareStatement(query);
        prep.setString(1, art.getNome());
        prep.setString(2, art.getArtista());
        prep.setInt(3, art.getId_albunsfavoritos());
       
        
        prep.execute();
        prep.close();
    }
    
     public void deleteAlbumFavorito(int id) throws SQLException {
        String query = "DELETE FROM albuns_favoritos WHERE id_albunsfavoritos = " + id;
        
        PreparedStatement prep = conn.prepareStatement(query);
        prep.execute();
        prep.close();
     }
}
