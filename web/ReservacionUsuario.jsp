<%-- 
    Document   : ReservacionUsuario
    Created on : 21-06-2020, 0:19:51
    Author     : maikolsb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reservacion</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="usuarios/images/icons/favicon.png"/>
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
                                        <a href="#">Inicio</a>
                                    </li>

                                    <li>
                                        <a href="#">Menu</a>
                                    </li>

                                    <li>
                                        <a href="#">Reservacion</a>
                                    </li>

                                    <li>
                                        <a href="#">Galeria</a>
                                    </li>

                                    <li>
                                        <a href="#">Nosotros</a>
                                    </li>

                                    <li>
                                        <a href="#">Contacto</a>
                                    </li>

                                    <li>
                                        <%
                                            HttpSession sesion = request.getSession();
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
                    <a href="#" class="txt19">Inicio</a>
                </li>

                <li class="t-center m-b-13">
                    <a href="#" class="txt19">Menu</a>
                </li>

                <li class="t-center m-b-13">
                    <a href="#" class="txt19">Galleria</a>
                </li>

                <li class="t-center m-b-13">
                    <a href="#" class="txt19">Nosotros</a>
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
                    <a href="#" class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto">
                        Reservacion
                        <img src="usuarios/images/icons/logosigloxx.png" alt="" width="30%" >
                    </a>
                </li>
            </ul>



        </aside>


        <!-- Title Page -->
        <section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(usuarios/images/bg-title-page-02.jpg);">
            <h2 class="tit6 t-center">
                Reservación
                <img src="usuarios/images/icons/logosiglo.png" alt="" width="30%" >
            </h2>
        </section>


        <!-- Reservation -->
        <section class="section-booking bg1-pattern p-t-100 p-b-110">
            <div class="t-center">
                <span class="tit2 t-center">
                    Reservacion
                </span>

                <h3 class="tit3 t-center m-b-35 m-t-2">
                    Reserva una mesa
                </h3>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 p-b-30">



                        <form action="servReservita" method="post" class="wrap-form-reservation size22 m-l-r-auto">
                            <div class="row">
                                <div class="col-md-4">
                                    <!-- Date -->
                                    <span class="txt9">
                                        Fecha
                                    </span>

                                    <div class="wrap-inputdate pos-relative txt10 size12 bo2 bo-rad-10 m-t-3 m-b-23">
                                        <input class="my-calendar bo-rad-10 sizefull txt10 p-l-20" type="text" name="txtFecha" required>
                                        <i class="btn-calendar fa fa-calendar ab-r-m hov-pointer m-r-18" aria-hidden="true"></i>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <!-- Time -->
                                    <span class="txt9">
                                        Hora
                                    </span>

                                    <div class="wrap-inputtime size12 bo2 bo-rad-10 m-t-3 m-b-23">
                                        <!-- Select2 -->
                                        <select class="selection-1" name="txtHora" required>
                                            <option value="9:00">9:00</option>
                                            <option>9:30</option>
                                            <option>10:00</option>
                                            <option>10:30</option>
                                            <option>11:00</option>
                                            <option>11:30</option>
                                            <option>12:00</option>
                                            <option>12:30</option>
                                            <option>13:00</option>
                                            <option>13:30</option>
                                            <option>14:00</option>
                                            <option>14:30</option>
                                            <option>15:00</option>
                                            <option>15:30</option>
                                            <option>16:00</option>
                                            <option>16:30</option>
                                            <option>17:00</option>
                                            <option>17:30</option>
                                            <option>18:00</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <!-- People -->
                                    <span class="txt9">
                                        Cantidad de personas
                                    </span>

                                    <div class="wrap-inputpeople size12 bo2 bo-rad-10 m-t-3 m-b-23">
                                        <!-- Select2 -->
                                        <select class="selection-1" name="txtCantidad" required>
                                            <option value="1" >1 Persona</option>
                                            <option value="2">2 Personas</option>
                                            <option value="3">3 Personas</option>
                                            <option value="4">4 Personas</option>
                                            <option value="5">5 Personas</option>
                                            <option value="6">6 Personas</option>
                                            <option value="7">7 Personas</option>
                                            <option value="8">8 Personas</option>
                                            <option value="9">9 Personas</option>
                                            <option value="10">10 Personas</option>
                                            <option value="11">11 Personas</option>
                                            <option value="12">12 Personas</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">



                                <div class="col-md-4">
                                    <!-- People -->
                                    <span class="txt9">
                                        Numero de mesa
                                    </span>

                                    <div class="wrap-inputpeople size12 bo2 bo-rad-10 m-t-3 m-b-23">
                                        <!-- Select2 -->
                                        <select class="selection-1" name="txtMesa" required>
                                            <option >1</option>
                                            <option >2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                            <option>10</option>
                                            <option>11</option>
                                            <option>12</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <!-- Email -->
                                    <span class="txt9">
                                        Telefono
                                    </span>
                                    <div class="wrap-inputemail size12 bo2 bo-rad-10 m-t-3 m-b-23">
                                        <input type="number" class="bo-rad-10 sizefull txt10 p-l-20"  name="txtTelefono" min="10000000" max="999999999"  placeholder="Telefono" required>
                                    </div>
                                </div>
                                
                                

                                <div class="col-md-4">
                                    <!-- Email -->

                                    <div >
                                        <input type="hidden" class="bo-rad-10 sizefull txt10 p-l-20"  name="txtEstado" placeholder="Numero" value ="1">
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <!-- Name -->
                                    <div >

                                        <%                                                                                                        String usuarioo = sesion.getAttribute("elterriblenombre2").toString();
                                            String maikoll = "prueba";
                                            out.print("<input class='bo-rad-10 sizefull txt10 p-l-20' type='hidden' name='txtNombre' placeholder='Id_Usiario' value='" + usuarioo + "'>");

                                        %>
                                    </div>
                                </div>



                            </div>

                            <div class="wrap-btn-booking flex-c-m m-t-6">
                                <!-- Button3 -->
                                <button type="submit" id="BtnAgregar" name="BtnAgregar" class="btn3 flex-c-m size13 txt11 trans-0-4">Reservar una mesa</button>

                            </div>
                        </form>
                    </div>


                    <div class="col-lg-6 p-b-30 p-t-18">
                        <div class="wrap-pic-booking size2 bo-rad-10 hov-img-zoom m-l-r-auto">

                            <img src="usuarios/images/uwu.jpg" alt="IMG-OUR">
                        </div>
                    </div>
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
