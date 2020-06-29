<%-- 
    Document   : EliminarReserva
    Created on : 27-06-2020, 20:34:57
    Author     : maikolsb
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con;
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            String Driver = "oracle.jdbc.driver.OracleDriver";
            String user = "jimin";
            String clave = "jimin";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            PreparedStatement ps;

            Statement smt;
            ResultSet rs;
            smt = con.createStatement();

            int id = Integer.parseInt(request.getParameter("id"));
            ps = con.prepareStatement("delete from reserva where id=" + id);
            ps.executeUpdate();
            response.sendRedirect("../usuarioReservacion.jsp");

        %>
    </body>
</html>
