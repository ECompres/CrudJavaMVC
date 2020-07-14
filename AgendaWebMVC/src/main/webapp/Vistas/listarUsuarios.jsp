<%-- 
    Document   : listarUsuarios
    Created on : 14/07/2020, 05:38:12 PM
    Author     : Yo
--%>

<%@page import="Modelo.Usuarios"%>
<%@page import="java.util.*"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Email</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <%
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                List<Usuarios> listUsuarios = usuarioDAO.listarUsuarios();
                Iterator<Usuarios> iter = listUsuarios.iterator();
                Usuarios usuarios = null;
            %>
            <tbody>
                <tr>
                    <%
                        while (iter.hasNext()) {
                        usuarios = iter.next();
                    %>
                    <td><%=usuarios.getID()%></td>
                    <td><%=usuarios.getNOMBRES()%></td>
                    <td><%=usuarios.getAPELLIDOS()%></td>
                    <td><%=usuarios.getEMAIL()%></td>
                    <td>
                        <input type="button" value="Editar" name="Editar" />
                        <input type="button" value="Borrar" name="Borrar" />
                    </td>
                </tr>
                <%
                       }
                %>
            </tbody>
        </table>

    </body>
</html>
