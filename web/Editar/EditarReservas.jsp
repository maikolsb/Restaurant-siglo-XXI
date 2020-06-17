<%-- 
    Document   : EditarReservas
    Created on : 25-05-2020, 2:51:33
    Author     : maikolsb
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page session = "true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
       //CONECTANOD A LA BASE DE DATOS:
      
       
       
       
                     Connection con;
                    String url = "jdbc:oracle:thin:@localhost:1521:XE";
                    String Driver = "oracle.jdbc.driver.OracleDriver";
                    String user = "jimin";
                    String clave = "jimin";
                    Class.forName(Driver);
                    con = DriverManager.getConnection(url, user, clave); 
                    PreparedStatement ps;
       
       //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
      
       ResultSet rs;
       int id=Integer.parseInt(request.getParameter("id"));
       ps=con.prepareStatement("select * from  where id ="+ id);
       rs=ps.executeQuery();
       while(rs.next()){
                         %>
        <div class="container">
            <h1>Modificar Registro</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                Fecha:
                <input type="text" readonly="" class="form-control" value="<%= rs.getString("id")%>"/>
                 dia:
                <input type="text" name="txtNombre" class="form-control" value="<%= rs.getString("nombre")%>"/><br>
                
              
                 <br>
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
                
                <a href="index.jsp">Regresar</a>
            </form>
            <%}%>
        </div>
    </body>
</html>
<%
    String nombre ;
       nombre=request.getParameter("txtNombre");
       
       if(nombre!=null  ){
           ps=con.prepareStatement("update insumo set nombre='"+ nombre +"' where id ="+ id);
           ps.executeUpdate();
           response.sendRedirect("index.jsp");
       }
       
       
%>
