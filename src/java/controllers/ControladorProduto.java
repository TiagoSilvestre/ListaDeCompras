/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import classes.Produto;
import models.ModelProduto;

/**
 *
 * @author ts
 */
public class ControladorProduto {
    
    public String getProdutos(){
        ModelProduto mp = new ModelProduto();
        String htmlcode = "";
        for(Produto produto : mp.getAllProdutos()){
            htmlcode += " \n" +
"                            <div class=\"col-sm-3\">\n" +
"                                <div class=\"product-image-wrapper\">\n" +
"                                    <div class=\"single-products\">\n" +
"                                        <div class=\"productinfo text-center\">\n" +
"                                            <img src=\""+produto.getImg()+"\" alt=\"\" />\n" +
"                                            <h2>R$ "+produto.getPreco()+"</h2>\n" +
"                                            <p>"+produto.getNome()+"</p>\n" +
"                                            <a href=\"product-details.jsp?id="+produto.getId()+"\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n" +
"                                        </div>\n" +
"                                        <div class=\"product-overlay\">\n" +
"                                            <div class=\"overlay-content\">\n" +
"                                                <h2>R$ "+produto.getPreco()+"</h2>\n" +
"                                                <p>"+produto.getNome()+"</p>\n" +
"                                                <a href=\"product-details.jsp?id="+produto.getId()+"\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n" +
"                                            </div>\n" +
"                                        </div>\n" +
"                                    </div>\n" +

"                                </div>\n" +
"                            </div>";
        }
                
                
                
        return htmlcode;
    }
    
    public Produto getProduto(int id){
        return new ModelProduto().getProduto(id);
    }
    
}
