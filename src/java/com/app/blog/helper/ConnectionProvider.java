/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.app.blog.helper;

/**
 *
 * @author agamj_d8qc0cg
 */
import java.sql.*;

public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection(){
        try{
           if(con==null){
            //driver class load
            Class.forName("com.mysql.jdbc.Driver");
            // create a connection
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/blogapp","root","password");}
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
          return con;
    }
}
