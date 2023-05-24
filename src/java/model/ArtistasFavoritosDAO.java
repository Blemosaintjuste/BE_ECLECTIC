
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ArtistasFavoritosDAO {
    private static Connection conn;
    
    public ArtistasFavoritosDAO() throws ClassNotFoundException, SQLException {
        conn = MyDatabase.getDatabase();
    }
    
     public void insertArtistasFavoritos(ArtistasFavoritos a) throws SQLException{
        //Criando a query para inserir o registro
        String query = "INSERT INTO artistas_favoritos(nome)"
                + "VALUES(?)";
        
        //Preparar a query para ser executada no BD
        PreparedStatement prep = conn.prepareStatement(query);
        
        prep.setString(1, a.getNome());
     
        //Executando a query pronta
        prep.execute();
        prep.close();
    }
     
     //SELECT
    public ArrayList<ArtistasFavoritos> listAll() throws SQLException {
        //Criar lista vazia
        ArrayList<ArtistasFavoritos> list = new ArrayList<>();
        
        //Criar query para pesquisa no BD
        String query = "SELECT * FROM artistas_favoritos";
        
        //Preparar query para executar no BD
        PreparedStatement prep = conn.prepareStatement(query);
        
        //Pegar o resultado da pesquina no BD
        ResultSet res = prep.executeQuery();
        
        //Varrer "res" mapeando os registros do BD
        //Para objetos da classe "Artista"
        while(res.next()) {
            //Criar objeto Artista vazio
            ArtistasFavoritos art = new ArtistasFavoritos();
            
            //Inserir os valores nos atributos com
            //os dados vindos das colunas do BD
            art.setId_artistasfavoritos(res.getInt("id_artistasfavoritos"));
            art.setNome(res.getString("nome"));
            
            //Inserir o objeto completo na lista
            list.add(art);
        }
        
        //Retornar lista cheia
        return list;
    }
    
     
    //SELECT
    public ArtistasFavoritos listById(int i) throws SQLException {
        String query = "SELECT * FROM artistas_favoritos "
                + "WHERE id_artistafavoritos = " + i;
        
        PreparedStatement prep = conn.prepareStatement(query);
        ResultSet res = prep.executeQuery();
        
        ArtistasFavoritos art = new ArtistasFavoritos();
        
        if(res.next()) {
            art.setId_artistasfavoritos(res.getInt("id_artistafavoritos"));
            art.setNome(res.getString("nome"));
            
        }
        
        return art;
    }
     //UPDATE
    public void updateArtistasFavoritos(ArtistasFavoritos art) throws SQLException {
        String query = "UPDATE artistas_favoritos SET nome = ?, WHERE id_artistafavoritos = ?";
        
        PreparedStatement prep = conn.prepareStatement(query);
        prep.setString(1, art. getNome());
       
        
        prep.execute();
        prep.close();
    }
    
     public void deleteArtista(int id) throws SQLException {
        String query = "DELETE FROM artistas_favoritos "
                + "WHERE id_artistasfavoritos = " + id;
        
        PreparedStatement prep = conn.prepareStatement(query);
        prep.execute();
        prep.close();
    }
    
    
}
