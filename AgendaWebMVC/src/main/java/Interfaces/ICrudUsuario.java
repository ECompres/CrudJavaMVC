package Interfaces;

import Modelo.Usuarios;
import java.util.List;

public interface ICrudUsuario {
    
    public List listarUsuarios();
    public Usuarios editarUsuario(int id);
    public boolean agregarUsuario(Usuarios usuario);
    public boolean editarUsuario(Usuarios usuario);
    public boolean eliminarUsuario(int id);
    
}
