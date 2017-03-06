/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Produto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author ts
 */
public class ModelProduto extends Conexao{
    
    public ArrayList<Produto> getAllProdutos(){
        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM produtos";
            pst = getConnection().prepareCall(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch(Exception e){
            System.out.println("Ocorreram erros na operacao");
        }finally{
            try{
                if(rs != null) rs.close();
                if(pst != null) pst.close();
                if(getConnection() != null) getConnection().close();
            } catch (Exception e){
                System.out.println("Ocorreram erros na operacao");
            }
        }
        
        return produtos;
    }
    
    public Produto getProduto(int id){
        Produto produto = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM produtos WHERE id_produto = ?";
            pst = getConnection().prepareCall(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while(rs.next()){
                produto = new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque"));
            }
        } catch(Exception e){
            
        }finally{
            try{
                if(rs != null) rs.close();
                if(pst != null) pst.close();
                if(getConnection() != null) getConnection().close();
            } catch (Exception e){
                
            }
        }
        
        return produto;
    }
    
}
