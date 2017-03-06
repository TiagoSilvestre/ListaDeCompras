/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ts
 */
public class Conexao {
    
    private String username = "root";
    private String password = "";
    private String hostname = "localhost";
    private String port     = "3306";
    private String database = "listadecompras";
    private String classname= "com.mysql.jdbc.Driver";
    private String url      = "jdbc:mysql://"+hostname+":"+port+"/"+database;
    private Connection con;
    
    public Conexao(){
        try {
            Class.forName(classname);
            this.con = DriverManager.getConnection(url, username, password);
        }catch(Exception e){
            System.err.println(e.getMessage());
        }
    }
    
    public Connection getConnection(){
        return this.con;
    }
    
    
}
