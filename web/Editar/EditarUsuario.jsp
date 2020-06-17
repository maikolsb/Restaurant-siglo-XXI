<%-- 
    Document   : EditarUsuario
    Created on : 03-06-2020, 1:15:56
    Author     : maikolsb
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page session = "true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservacion</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
      
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

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
       ps=con.prepareStatement("select * from  usuarios where id ="+ id);
       rs=ps.executeQuery();
       while(rs.next()){
                         %>
        
        
        
        
        
        
        
        
        
        
        <center>
        </br></br></br>
        
        

        <form action="" method="POST" class="form-control" style="width: 500px; height: 400px">



           
            <div>
                <label> rut:</label>
                <input type="text" id="txtNombre" name="rut" class="form-control" value="<%= rs.getString("rut")%>" disabled> 
            </div>

            <div>
                <label> nombre:</label>
                <input type="text"  id="txtCorreo" name="nombre" class="form-control" value="<%= rs.getString("nombre")%>" disabled> 
            </div>
            
            <div>
                <label> apellidomat:</label>
                <input type="text"  id="txtMesa" name="apellidomat" class="form-control"  value="<%= rs.getString("apellidomat")%>" disabled>  
            </div>
            
            <div>
                
                <label> correo:</label>
                <input type="text"  id="txtMesa" name="correo" class="form-control" value="<%= rs.getString("correo")%>">  
            </div>
          
            <div>
                <label> estado:</label>
                <input type="text"  id="txtMesa" class="form-control" name="estado" disabled>  
            </div>


            <button type="submit" id="BtnActualizar" name="BtnActualizar">Agregar</button>
            <button type="submit"  href="../AdminUsuarios.jsp" id="BtnActualizar" name="BtnA">Cancelar</button>
    

        </form>
<%}%>

</center>


    </body>
</html>
<%
    String correo=request.getParameter("correo");
    
       
       if(correo!=null){
           ps=con.prepareStatement("update usuarios set correo='"+correo +"' where id ="+ id);
           ps.executeUpdate();
           response.sendRedirect("AdminUsuarios.jsp");
       }
       
       
%>