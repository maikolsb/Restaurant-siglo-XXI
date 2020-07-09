<%-- 
    Document   : MenuRestaurant
    Created on : 26-06-2020, 17:03:27
    Author     : maikolsb
--%>

<%@page import="Clases.Orden"%>
<%@page import="java.sql.*"%>
<%@page import="Ent.Receta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session = "true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reservacion</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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


        <%

            String mesita = request.getParameter("mesa");
            String mesasession = (String) session.getAttribute("mesaid");
            if (mesita == null) {
                if (mesasession == null) {
                    session.setAttribute("mesaid", "1");
                }
            } else {
                session.setAttribute("mesaid", mesita);
                response.sendRedirect("MenuRestaurant.jsp");
            }


        %>


    </head>






      <body class="animsition">

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
                                        <a href="IndexRestaurant.jsp">Inicio</a>
                                    </li>

                                    <li>
                                        <a href="MenuRestaurant.jsp">Menu</a>
                                    </li>


                                    <li>

                                        <a href="ReservacionUsuario.jsp">Reservacion</a>
                                    </li>

                             

                                    <li>
                                        <a href="NosotrosRestaurant.jsp">Nosotros</a>
                                    </li>

                                    <li>
                                        <a href="#">Contacto</a>
                                    </li>

                                    <li>
                                        <%                                            HttpSession sesion = request.getSession();
                                            String usuario = sesion.getAttribute("elterriblenombre").toString();
                                            String maikol = "prueba";
                                            out.print("<a href='#' >" + usuario + "</a>");
                                        %>


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

                    <%
                        out.print("<a href='#' class='txt19'>" + usuario + "</a>");
                    %>


                </li>

                <li class="t-center m-b-13">
                    <a href="IndexRestaurant.jsp" class="txt19">Inicio</a>
                </li>

                <li class="t-center m-b-13">
                    <a href="MenuRestaurant.jsp" class="txt19">Menu</a>
                </li>

                <li class="t-center m-b-13">
                    <a href="ReservacionUsuario.jsp" class="txt19">Reservacion</a>
                </li>

           

                <li class="t-center m-b-13">
                    <a href="NosotrosRestaurant.jsp" class="txt19">Nosotros</a>
                </li>



                <li class="t-center m-b-13">
                    <a href="#" class="txt19">Contacto</a>
                </li>

                <li class="t-center m-b-33">
                    <%
                        out.print(" <a class='txt19' name='cerrar' href='LoginPagina.jsp?cerrar=true'><i class='fa fa-power-off m-r-5 m-l-5'></i>Cerrar sesion</a>");

                        if (request.getParameter("cerrar") != null) {
                            request.getSession().invalidate();
                            response.sendRedirect("LoginPagina.jsp");
                            return;

                        }

                    %>

                </li>

                <li class="t-center">
                    <!-- Button3 -->
                    <a href="ReservacionUsuario.jsp" class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto">
                        Reservacion
                        <img src="usuarios/images/icons/logosigloxx.png" alt="" width="30%" >
                    </a>
                </li>
            </ul>



        </aside>
        <section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(usuarios/images/bg-title-page-02.jpg);">
            <h2 class="tit6 t-center">
                Menú
                <img src="usuarios/images/icons/logosiglo.png" alt="" width="30%" >
            </h2>
        </section>




        <section class="section-mainmenu p-t-110 p-b-70 bg1-pattern">
            <center>
                <span class="tit2 t-center" >
                    Menú Restaurant Siglo XXI
                </span>
            </center>
            </br>
            </br>
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-lg-6 p-r-35 p-r-15-lg m-l-r-auto">
                        <div class="wrap-item-mainmenu p-b-22">
                            <h3 class="tit-mainmenu tit10 p-b-25">
                                Platos
                            </h3>

                            <!-- Item mainmenu -->


                            <!-- Item mainmenu -->
                            <% for (Receta receta : Dao.DaoReceta.All()) {
                            %>
                            <form method="post" action="servMenu">
                                <div class="item-mainmenu m-b-36">
                                    <div class="flex-w flex-b m-b-3">
                                        <a href="#" class="name-item-mainmenu txt21">
                                            <%= receta.nombre%>
                                        </a>

                                        <div class="line-item-mainmenu bg3-pattern"></div>

                                        <div class="price-item-mainmenu txt22">
                                            $ <%= receta.precio%> <input type="hidden" value="<%= receta.id%>" name="id">

                                        </div>
                                    </div>

                                    <span class="info-item-mainmenu txt23">
                                        <%= receta.descripcion%>

                                    </span>
                                    <div class="col-md-5">
                                        <!-- Email -->


                                        <div class="wrap-inputemail input-group size12 bo2 bo-rad-10 m-t-3 m-b-23">

                                            <input type="number" class="bo-rad-10 sizefull txt10 p-l-20" name="cantidad"   placeholder="Cantidad" required>

                                            <input type="submit" value="pedir" name="btnPedir"  class="btn btn-danger ">
                                        </div>
                                    </div>

                                </div>
                            </form>
                            <% }%>

                           

                         

                         


                        </div>
                    </div>
                </div>
            </div>
        </section>
                            
                            <br><br>
                                <center>
        <span class="tit2 t-center" >
            Sus Pedidos
        </span>
    </center>
    <br>
    <br>


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



        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            <div class="table-responsive">  <!--<a  class="btn btn-success" href="Agregar.jsp">Nuevo Registro</a> Esto es Cuando se Crea un nuevo Archivo Agregar.jsp -->         
                                <table  class="table table-striped table-bordered" id="tablaDatos">
                                    <thead>
                                        <tr> 

                                            <th class="text-center">Cantidad</th>
                                            <th class="text-center">Estado</th>
                                           
                                            <th class="text-center">Plato</th>


                                        </tr>
                                    </thead>
                                    <tbody id="tbodys">
                                        <%                    while (rs.next()) {
                                            
                                             if(rs.getString("mesa_id").equals(mesasession)){
                                        %>
                                        <tr>

                                            <td class="text-center"><%= rs.getString("cantidad")%></td>
                                           
                                            <td class="text-center"> <%=Orden.estadoPalabra(rs.getInt("estado")) %></td>
                                           
                                            
                                            <td class="text-center">

                                                <%=Dao.DaoReceta.Read(rs.getInt("receta_id")).nombre%>
                                            </td>




                                        </tr>
                                        <%}}%>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>















        <!-- Title Page -->

        <section>
            <div class="info-reservation flex-w p-t-80">
                <div class="size23 w-full-md p-t-40 p-r-30 p-r-0-md">
                    <h4 class="txt5 m-b-18">
                        Reserve por telefono
                    </h4>

                    <p class="size25">
                        Llamanos para reservar 
                        <span class="txt25"> a este numero</span>

                        <span class="txt25"> </span>

                        <span class="txt24">(+569) 345 6889</span>
                        o envianos un correo 
                    </p>
                </div>

                <div class="size24 w-full-md p-t-40">
                    <h4 class="txt5 m-b-18">
                        Reservar para eventos
                    </h4>

                    <p class="size26">
                        llamanos
                        <span class="txt24">(+569) 345 6889</span>
                        , para reservar
                    </p>
                </div>

            </div>

        </section>










        <!-- Footer -->
        <footer class="bg1">
            <div class="container p-t-40 p-b-70">
                <div class="row">
                    <div class="col-sm-6 col-md-4 p-t-50">
                        <!-- - -->
                        <h4 class="txt13 m-b-33">
                            Contactanos
                        </h4>

                        <ul class="m-b-70">
                            <li class="txt14 m-b-14">
                                <i class="fa fa-map-marker fs-16 dis-inline-block size19" aria-hidden="true"></i>
                                Calle falsa #123
                            </li>

                            <li class="txt14 m-b-14">
                                <i class="fa fa-phone fs-16 dis-inline-block size19" aria-hidden="true"></i>
                                (+569) 96716 6879
                            </li>

                            <li class="txt14 m-b-14">
                                <i class="fa fa-envelope fs-13 dis-inline-block size19" aria-hidden="true"></i>
                                sigloXXI@gmail.com
                            </li>
                        </ul>

                        <!-- - -->
                        <h4 class="txt13 m-b-32">
                            Horario de atención
                        </h4>

                        <ul>
                            <li class="txt14">
                                09:30 AM – 11:00 PM
                            </li>

                            <li class="txt14">
                                Todos los dias
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-4 p-t-50">
                        <!-- - -->
                        <h4 class="txt13 m-b-33">
                            Ultimos Twitter
                        </h4>

                        <div class="m-b-25">
                            <span class="fs-13 color2 m-r-5">
                                <i class="fa fa-twitter" aria-hidden="true"></i>
                            </span>
                            <a href="#" class="txt15">
                                @sigloXXI
                            </a>

                            <p class="txt14 m-b-18">
                                Hola buenos dias
                                <a href="#" class="txt15">

                                </a>
                            </p>

                            <span class="txt16">
                                05 Jun 2019
                            </span>
                        </div>

                        <div>
                            <span class="fs-13 color2 m-r-5">
                                <i class="fa fa-twitter" aria-hidden="true"></i>
                            </span>
                            <a href="#" class="txt15">
                                @sigloXXI
                            </a>

                            <p class="txt14 m-b-18">
                                Buenas tardes
                                <a href="#" class="txt15">

                                </a>
                            </p>

                            <span class="txt16">
                                05 Jun 2019
                            </span>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4 p-t-50">
                        <!-- - -->
                        <h4 class="txt13 m-b-38">
                            Galeria
                        </h4>

                        <!-- Gallery footer -->
                        <div class="wrap-gallery-footer flex-w">
                            <a class="item-gallery-footer wrap-pic-w" href="usuarios/images/icons/logosigloxx.png" data-lightbox="gallery-footer">
                                <img src="usuarios/images/icons/logosigloxx.png" alt="GALLERY">
                            </a>


                        </div>

                    </div>
                </div>
            </div>

            <div class="end-footer bg2">
                <div class="container">
                    <div class="flex-sb-m flex-w p-t-22 p-b-22">
                        <div class="p-t-5 p-b-5">
                            <a href="#" class="fs-15 c-white"><i class="fa fa-tripadvisor" aria-hidden="true"></i></a>
                            <a href="#" class="fs-15 c-white"><i class="fa fa-facebook m-l-18" aria-hidden="true"></i></a>
                            <a href="#" class="fs-15 c-white"><i class="fa fa-twitter m-l-18" aria-hidden="true"></i></a>
                        </div>

                        <div class="txt17 p-r-20 p-t-5 p-b-5">
                            Todos los derechos reservados     <i class="fa fa-heart"></i> por <a href="#" target="_blank"> RESTAURANT SIGLO XXI</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>


        <!-- Back to top -->
        <div class="btn-back-to-top bg0-hov" id="myBtn">
            <span class="symbol-btn-back-to-top">
                <i class="fa fa-angle-double-up" aria-hidden="true"></i>
            </span>
        </div>

        <!-- Container Selection1 -->
        <div id="dropDownSelect1"></div>



        <!--===============================================================================================-->
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
</html>
