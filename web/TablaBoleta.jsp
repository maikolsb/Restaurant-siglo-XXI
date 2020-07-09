<%-- 
    Document   : TablaOrdenes
    Created on : 09-07-2020, 0:16:29
    Author     : Sebastian
--%>

<%@page import="Ent.Receta"%>
<%@page import="Dao.DaoReceta"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.DaoOrden"%>
<%@page import="Ent.Orden"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mesasession = (String) session.getAttribute("mesaid");
    int mesaid=0;
    try {
        mesaid=Integer.parseInt(mesasession);
    } catch(Exception e){
        System.out.println(e.getMessage());
    }
%>
<table  class="table table-striped table-bordered" id="tablaDatos">
    <thead>
        <%            //CONECTANOD A LA BASE DE DATOS:
            ArrayList<Orden> ordenes = new ArrayList<Orden>();
            
            for (Orden o : new DaoOrden().All()) {
                if(o.getMesa_id()==mesaid){
                    ordenes.add(o);
                }
            }            
            ArrayList<Receta> recetas = DaoReceta.All();
            
        %>
        <tr> 
            <th class="text-center">Plato</th>
            <th class="text-center">Cantidad</th>
            <th class="text-center">Precio</th> 

        </tr>
    </thead>
    <tbody id="tbodys">
        <%
            int total = 0;
            for(Orden o : ordenes){                 
        %>
        <tr>
            <%
                Receta recetita=null;
                for(Receta r : recetas){
                    if(r.id==o.getReceta_id()){
                        recetita=r;
                    }
                }
                if(recetita==null){
                    continue;
                }
                if(o.getEstado()==5){
                    continue;
                }
                %>
            <td class="text-center">
               <%=recetita.nombre%>
            </td>

            <td class="text-center"> 
                <%=o.getCantidad()%> </td>

            <td class="text-center"> 
                <%= recetita.precio*o.getCantidad() %></td>

        </tr>
        <%
               total+=recetita.precio*o.getCantidad();
         } 
        %>
    </tbody>
</table>
    
    <h3>Total: <%=total%></h3>