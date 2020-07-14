/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.*;

/**
 *
 * @author Yo
 */
public class DbConnection {
    Connection con;
    
    public DbConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/agendaWeb");
        }catch(ClassNotFoundException | SQLException e){
            System.err.print("Error: "+e);
        }
    }
    public Connection getConnection(){
        return con;
    }
}
