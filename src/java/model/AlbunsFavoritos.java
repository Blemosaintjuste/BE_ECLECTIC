
package model;


public class AlbunsFavoritos {
    private int id_albunsfavoritos;
    private String nome;
    private String artista;
    
    public AlbunsFavoritos(String nome, String artista) {
            this.nome = nome;
            this.artista = artista;
    }
        public AlbunsFavoritos(){}

    public int getId_albunsfavoritos() {
        return id_albunsfavoritos;
    }

    public void setId_albunsfavoritos(int id_albunsfavoritos) {
        this.id_albunsfavoritos = id_albunsfavoritos;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getArtista() {
        return artista;
    }

    public void setArtista(String artista) {
        this.artista = artista;
    }
        
        
        
}
