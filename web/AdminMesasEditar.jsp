<%-- 
    Document   : AdminMesasEditar
    Created on : 19-06-2020, 18:07:17
    Author     : maikolsb
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session = "true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar mesas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <%            //CONECTANOD A LA BASE DE DATOS:
            Connection con;
            con = new Controlador.Conexion().getConnection();
            PreparedStatement ps;
            //Emnpezamos Listando los Datos de la Tabla Usuario

            Statement smt;
            ResultSet rs;
            smt = con.createStatement();

            //CONECTANOD A LA BASE DE DATOS:
            //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
            int id = Integer.parseInt(request.getParameter("id"));
            ps = con.prepareStatement("select * from  mesa where id =" + id);
            rs = ps.executeQuery();
            while (rs.next()) {
        %>




    <center>
        </br></br></br>



        <form action="" method="POST" class="form-control" style="width: 500px; height: 400px">




            <div>
                <label> Id:</label>
                <input type="number" id="id" name="id" class="form-control" value="<%= rs.getString("id")%>" disabled> 
            </div>

            <div>
                <label> Numero de la mesa:</label>
                <input type="number"  id="numero" name="numero" class="form-control" value="<%= rs.getString("numero")%>" disabled> 
            </div>


            <label> Estado:</label>




            <div class="form-group row">

                <div class="col-md-9">


                    <select class="select2 form-control custom-select" name="estado" style="width: 475px; height:36px;" required>


                        <option value="<%= rs.getString("estado")%>">Seleccione</option>

                        <option value="1">Activo</option>
                        <option value="2">Inactivo</option>

                    </select>
                </div>
            </div>



            <button type="submit" id="BtnActualizar" name="BtnActualizar">Agregar</button>
            <button type="submit"  href="AdminMesas.jsp" id="BtnActualizar" name="">Cancelar</button>



        </form>
        <%}%>

    </center>





</body>
</html>

<%
    String estado = request.getParameter("estado");

    if (estado != null) {
        ps = con.prepareStatement("update mesa set estado='" + estado + "' where id =" + id);
        ps.executeUpdate();
        response.sendRedirect("AdminMesas.jsp");
    }


%>