
package model;


public class ArtistasFavoritos {
        private int id_artistasfavoritos;
        private String nome;
        
        public ArtistasFavoritos(String nome) {
            this.nome = nome;
       
    }
        public ArtistasFavoritos(){}

    public int getId_artistasfavoritos() {
        return id_artistasfavoritos;
    }

    public void setId_artistasfavoritos(int id_artistasfavoritos) {
        this.id_artistasfavoritos = id_artistasfavoritos;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
        
}
