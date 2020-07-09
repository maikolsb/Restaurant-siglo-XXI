<%-- 
    Document   : TablaOrdenes
    Created on : 09-07-2020, 0:16:29
    Author     : Sebastian
--%>

<%@page import="Clases.Orden"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mesasession = (String) session.getAttribute("mesaid");
    if (mesasession == null) {
        session.setAttribute("mesaid", "1");
    }
%>
<table  class="table table-striped table-bordered" id="tablaDatos">
    <thead>
        <%            //CONECTANOD A LA BASE DE DATOS:
            Connection con;
            con = new Controlador.Conexion().getConnection();
            PreparedStatement ps;
            //Emnpezamos Listando los Datos de la Tabla Usuario

            Statement smt;
            ResultSet rs;
            smt = con.createStatement();

            rs = smt.executeQuery("select * from orden");

            //Creamo la Tabla:     
        %>
        <tr> 
            <th class="text-center">Plato</th>
            <th class="text-center">Cantidad</th>
            <th class="text-center">Estado</th> 

        </tr>
    </thead>
    <tbody id="tbodys">
        <%                    while (rs.next()) {

                if (rs.getString("mesa_id").equals(mesasession) && rs.getInt("estado") != 5) {
        %>
        <tr>
            <td class="text-center">

                <%=Dao.DaoReceta.Read(rs.getInt("receta_id")).nombre%>
            </td>

            <td class="text-center"><%= rs.getString("cantidad")%></td>

            <td class="text-center"> <%=Orden.estadoPalabra(rs.getInt("estado"))%></td>


        </tr>
        <%} }%>
    </tbody>

</table>