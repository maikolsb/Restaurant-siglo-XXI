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
   
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->


    <!--===============================================================================================-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="usuarios/images/icons/logosiglo.png"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/fonts/themify/themify-icons.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/vendor/slick/slick.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/vendor/lightbox2/css/lightbox.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="usuarios/css/util.css">
    <link rel="stylesheet" type="text/css" href="usuarios/css/main.css">
    <!--===============================================================================================-->


</head>
<body>



    <!-- Header -->
    <header>
        <!-- Header desktop -->
        <div class="wrap-menu-header gradient1 trans-0-4">
            <div class="container h-full">
                <div class="wrap_header trans-0-3">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="#">
                            <img src="usuarios/images/icons/logosigloxx.png" alt="" width="70" height="70" >
                        </a>
                    </div>

                    <!-- Menu -->
                    <div class="wrap_menu p-l-45 p-l-0-xl">
                        <nav class="menu">
                            <ul class="main_menu">


                                <li>
                                    <a href="MenuRestaurant.jsp#zonamenu">Menu</a>
                                </li>


                                <li>

                                    <a href="MenuRestaurant.jsp#zonapedidos">Pedidos</a>
                                </li>



                                <li>
                                    <a href="TablaBoleta.jsp#zonapago">Pagar</a>
                                </li>





                            </ul>
                        </nav>
                    </div>

                    <!-- Social -->
                    <div class="social flex-w flex-l-m p-r-20">
                        <a href="#"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-facebook m-l-21" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter m-l-21" aria-hidden="true"></i></a>

                        <button class="btn-show-sidebar m-l-33 trans-0-4"></button>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Sidebar -->
    <aside class="sidebar trans-0-4">
        <!-- Button Hide sidebar -->
        <button class="btn-hide-sidebar ti-close color0-hov trans-0-4"></button>

        <!-- - -->
        <ul class="menu-sidebar p-t-95 p-b-70">

            <li class="t-center m-b-13">



            </li>



            <li class="t-center m-b-13">
                <a href="MenuRestaurant.jsp#zonamenu" class="txt19">Menu</a>
            </li>

            <li class="t-center m-b-13">
                <a href="MenuRestaurant.jsp#zonapedidos" class="txt19">Pedido</a>
            </li>
            <li class="t-center m-b-13">
                <a href="TablaBoleta.jsp#zonapago" class="txt19">Pagar</a>
            </li>








    </aside>
    <section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(usuarios/images/bg-title-page-02.jpg);">
        <h2 class="tit6 t-center">
            Pago
            <img src="usuarios/images/icons/logosiglo.png" alt="" width="30%" >
        </h2>
    </section>












    <%
        String mesasession = (String) session.getAttribute("mesaid");
        int mesaid = 0;
        try {
            mesaid = Integer.parseInt(mesasession);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    %>






    <div class="container-fluid " id="zonapago">
        <div class="row">
            <div class="col-md-12">
                <div class="card card-body printableArea">

                    <hr>
                    <div class="row">
                        <div class="col-md-12">

                            <div class="pull-center text-center">
                                <address>

                                    <h4 class="font-bold">Restaurant Siglo XXI</h4>
                                    <span class="tit2 t-center" >
                                        Boleta de consumo 
                                    </span>

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
                                                if (o.getMesa_id() == mesaid) {
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
                                        <%                                                    int total = 0;
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
                                            <td class="text-center">
                                                <%=recetita.nombre%>
                                            </td>

                                            <td class="text-center"> 
                                                <%=o.getCantidad()%> </td>

                                            <td class="text-center"> 
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



                        <div class="col-md-12"><br>
                            
                            
                            <div class="col-md-12">                   
                                <div  class="pull-right m-t-30 text-right">
                                    <br>
                                    <h4><br><br><br><br><br>
                                        <div>Opciones de pago</div>
                                        <br>

                                    </h4>

                                    <input type="radio" name="pago" value="Webpay" notchecked required>Pago web
                                    <input type="radio" name="pago" value="Efectivo" notchecked required>Efectivo<br>

                                    </br>

                                </div>
                            </div>
                            
                            <div class="pull-right m-t-30 text-right">

                                <hr>
                                <h3><b>Total :</b> <%=total%></h3>
                            </div>

                            <div class="clearfix"></div>

                            <hr>


                            <div class="text-right">
                                
                                <a class="btn btn-danger" href="FinalizarPago.jsp">Proceder a pagar</a>
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


    <footer class="bg1">


        <div class="end-footer bg2">
            <div class="container">
                <div class="flex-sb-m flex-w p-t-22 p-b-22">


                    <div class="txt17 p-r-20 p-t-5 p-b-5">
                        <a href="LoginMesa.jsp" target="_blank">Acceso administrador</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>





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


    <script type="text/javascript" src="usuarios/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="usuarios/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="usuarios/vendor/bootstrap/js/popper.js"></script>
    <script type="text/javascript" src="usuarios/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="usuarios/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="usuarios/vendor/daterangepicker/moment.min.js"></script>
    <script type="text/javascript" src="usuarios/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="usuarios/vendor/slick/slick.min.js"></script>
    <script type="text/javascript" src="usuarios/js/slick-custom.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="usuarios/vendor/parallax100/parallax100.js"></script>
    <script type="text/javascript">
        $('.parallax100').parallax100();
    </script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="usuarios/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script type="text/javascript" src="usuarios/vendor/lightbox2/js/lightbox.min.js"></script>
    <!--===============================================================================================-->
    <script src="usuarios/js/main.js"></script>


</body>
