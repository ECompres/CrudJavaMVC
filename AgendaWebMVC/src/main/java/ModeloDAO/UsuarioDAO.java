/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import config.DbConnection;
import Interfaces.ICrudUsuario;
import Modelo.Usuarios;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Yo
 */
public class UsuarioDAO implements ICrudUsuario{
    DbConnection cn = new DbConnection();
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Usuarios usuarios = new Usuarios();
    
    @Override
    public List listarUsuarios() {
        ArrayList<Usuarios> listaUsuarios = new ArrayList<>();
        String sql = "SELECT * FROM usuarios";
        try{
            con = cn.getConnection();
            pst = con.prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                Usuarios usu = new Usuarios();
                usu.setID(rs.getInt("ID"));
                usu.setNOMBRES(rs.getString("NOMBRES"));
                usu.setAPELLIDOS(rs.getString("APELLIDOS"));
                usu.setEMAIL(rs.getString("EMAIL"));
                usu.setPASSWORD(rs.getString("PASSWORD"));
                listaUsuarios.add(usu);
            }
        }catch(Exception e){
            System.err.print("Error: "+e);
        }
        return listaUsuarios;
    }

    @Override
    public Usuarios editarUsuario(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean agregarUsuario(Usuarios usuario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean editarUsuario(Usuarios usuario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarUsuario(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
