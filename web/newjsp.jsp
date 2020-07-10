<%-- 
    Document   : formulario
    Created on : 26-06-2020, 18:39:28
    Author     : maikolsb
--%>
<%@page import="Ent.Receta"%>
<%@page import="Dao.DaoReceta"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.DaoOrden"%>
<%@page import="Ent.Orden"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="paginaAdmin/assets/images/favicon.png">
  <title>Restaurant</title>
    <!-- Custom CSS -->
    <link href="paginaAdmin/dist/css/style.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->



</head>
<body>


    <%
        String mesasession = (String) session.getAttribute("mesaid");
        int mesaid = 0;
        try {
            mesaid = Integer.parseInt(mesasession);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    %>







    <div class="row">
        <div class="col-md-12">
            <div class="card card-body printableArea">

                <hr>
                <div class="row">
                    <div class="col-md-12">

                        <div class="pull-right text-right">
                            <address>

                                <h4 class="font-bold">Restaurant Siglo XXI</h4>
                                <p class="text-muted m-l-30">Boleta de consumo

                                </p>

                            </address>
                        </div>
                    </div>
                    <div class="col-md-12">

                        <div class="table-responsive m-t-40" style="clear: both;">
                            <table  class="table table-hover" id="tablaDatos">
                                <thead>

                                   <% ArrayList<Orden> ordenes = new ArrayList<Orden>();

                                        for (Orden o : new DaoOrden().All()) {
                                        if(o.getMesa_id()==mesaid){
                                        ordenes.add(o);
                                        }
                                        }            
                                        ArrayList<Receta> recetas = DaoReceta.All();

                                            %>
                                            <tr>
                                                <th class="text-right">Plato</th>
                                                <th class="text-right">Cantidad</th>
                                                <th class="text-right">Precio</th> 
                                            </tr>
                                            </thead>
                                            <tbody id="tbodys">
                                                <%
                                                    int total = 0;
                                                    for (Orden o : ordenes) {
                                                %>
                                                <tr>


                                                    <%
                                                        Receta recetita = null;
                                                        for (Receta r : recetas) {
                                                            if (r.id == o.getReceta_id()) {
                                                                recetita = r;
                                                            }
                                                        }
                                                        if (recetita == null) {
                                                            continue;
                                                        }
                                                        if (o.getEstado() == 5) {
                                                            continue;
                                                        }
                                                    %>
                                                    <td class="text-right">
                                                        <%=recetita.nombre%>
                                                    </td>

                                                    <td class="text-right"> 
                                                        <%=o.getCantidad()%> </td>

                                                    <td class="text-right"> 
                                                        <%= recetita.precio * o.getCantidad()%></td>


                                                </tr>
                                                <%
                                                        total += recetita.precio * o.getCantidad();
                                                    }
                                                %>


                                            </tbody>
                                            </table>
                                            </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="pull-right m-t-30 text-right">

                                                    <hr>
                                                    <h3><b>Total :</b> <%=total%></h3>
                                                </div>
                                                <div class="clearfix"></div>
                                                <hr>
                                                <div class="text-right">
                                                    <button class="btn btn-danger" type="submit"> Proceder a pagar </button>
                                                </div>
                                            </div>
                                            </div>
                                            </div>
                                            </div>
                                            </div>

                                            <!-- ============================================================== -->
                                            <!-- End PAge Content -->
                                            <!-- ============================================================== -->
                                            <!-- ============================================================== -->
                                            <!-- Right sidebar -->
                                            <!-- ============================================================== -->
                                            <!-- .right-sidebar -->
                                            <!-- ============================================================== -->
                                            <!-- End Right sidebar -->
                                            <!-- ============================================================== -->
                                            </div>





                                            <script src="paginaAdmin/assets/libs/jquery/dist/jquery.min.js"></script>
                                            <!-- Bootstrap tether Core JavaScript -->
                                            <script src="paginaAdmin/assets/libs/popper.js/dist/umd/popper.min.js"></script>
                                            <script src="paginaAdmin/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
                                            <!-- slimscrollbar scrollbar JavaScript -->
                                            <script src="paginaAdmin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
                                            <script src="paginaAdmin/assets/extra-libs/sparkline/sparkline.js"></script>
                                            <!--Wave Effects -->
                                            <script src="paginaAdmin/dist/js/waves.js"></script>
                                            <!--Menu sidebar -->
                                            <script src="paginaAdmin/dist/js/sidebarmenu.js"></script>
                                            <!--Custom JavaScript -->
                                            <script src="paginaAdmin/dist/js/custom.min.js"></script>


                                            </body>
                                            </html>