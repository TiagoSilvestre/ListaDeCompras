/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author ts
 */
public class Produto {
    
    private int id;
    private String nome;
    private String img;
    private int categoria;
    private double preco;
    private int estoque;

    public Produto(int id, String nome, String img, int categoria, double preco, int estoque) {
        this.id = id;
        this.nome = nome;
        this.img = img;
        this.categoria = categoria;
        this.preco = preco;
        this.estoque = estoque;
    }

    public Produto(){
        
    }
        
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }
    
    
}
