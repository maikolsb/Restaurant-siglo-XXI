<%-- 
    Document   : LoginPagina
    Created on : 07-07-2020, 22:03:58
    Author     : maikolsb
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restaurant</title>


        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Favicon icon -->
        <link rel="icon" type="image/png" sizes="16x16" href="paginaAdmin/assets/images/favicon.png">
        <title>Matrix Template - The Ultimate Multipurpose admin template</title>
        <!-- Custom CSS -->
        <link href="paginaAdmin/dist/css/style.min.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->


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
                                        <a href="Index.jsp">Inicio</a>
                                    </li>

                                    <li>
                                        <a href="MenuPrecios.jsp">Menu</a>
                                    </li>


                                    <li>
                                        <a href="Nosotros.jsp">Nosotros</a>
                                    </li>

                                    <li>
                                        <a href="#">Contacto</a>
                                    </li>
                                    <li>
                                        <a href="LoginPagina.jsp">Iniciar sesion</a>
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
                    <a href="Index.jsp" class="txt19">Inicio</a>
                </li>

                <li class="t-center m-b-13">
                    <a href="MenuPrecios.jsp" class="txt19">Menu</a>
                </li>

               

                <li class="t-center m-b-13">
                    <a href="Nosotros.jsp" class="txt19">Nosotros</a>
                </li>



                <li class="t-center m-b-13">
                    <a href="#" class="txt19">Contacto</a>
                </li>
                
                 <li class="t-center m-b-13">
                    <a href="LoginPagina.jsp" class="txt19">Iniciar Sesion</a>
                </li>



                <li class="t-center">
                    <!-- Button3 -->
                    <a href="LoginPagina.jsp" class="btn3 flex-c-m size13 txt11 trans-0-4 m-l-r-auto">
                        Reservacion
                        <img src="usuarios/images/icons/logosigloxx.png" alt="" width="30%" >
                    </a>
                </li>
            </ul>



        </aside>




        <section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(usuarios/images/bg-title-page-02.jpg);">
            <h2 class="tit6 t-center">
                Iniciar sesion - Registro
                <img src="usuarios/images/icons/logosiglo.png" alt="" width="20%" >
            </h2>
        </section>



        <%

            if (request.getParameter("cerrar") != null) {
                request.getSession().invalidate();
                response.sendRedirect("LoginPagina.jsp");
                return;
            }
        %>



        <div class="main-wrapper">
            <!-- ============================================================== -->
            <!-- Preloader - style you can find in spinners.css -->
            <!-- ============================================================== -->
            <div class="preloader">
                <div class="lds-ripple">
                    <div class="lds-pos"></div>
                    <div class="lds-pos"></div>
                </div>
            </div>


            <!-- ============================================================== -->
            <!-- Preloader - style you can find in spinners.css -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Login box.scss -->
            <!-- ============================================================== -->
            <div class="auth-wrapper d-flex no-block justify-content-center align-items-center bg-dark">
                <div class="auth-box bg-dark border-top border-secondary">
                    <div id="loginform">
                        <div class="text-center p-t-20 p-b-20">
                            <h3 class="text-white" align="left">Bienvenido inicia sesión</h3>
                        </div>
                        <!-- Form -->
                        <form class="form-horizontal m-t-20"  action="servUsuarioLogin" method="post" id="loginform" >
                            <div class="row p-b-30">
                                <div class="col-12">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text bg-success text-white" id="basic-addon1"><i class="ti-user"></i></span>
                                        </div>
                                        <input type="text" class="form-control form-control-lg" placeholder="Ingrese su rut" aria-label="rut" name="rut" aria-describedby="basic-addon1" required="">
                                    </div>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text bg-warning text-white" id="basic-addon2"><i class="ti-pencil"></i></span>
                                        </div>
                                        <input type="password" class="form-control form-control-lg" placeholder="Contraseña" aria-label="Password" name="password" aria-describedby="basic-addon1" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="row border-top border-secondary">
                                <div class="col-12">
                                    <div class="form-group">
                                        <div class="p-t-20">
                                            <button class="btn btn-info" id="to-recover" type="button"><i class="fa fa-lock m-r-5"></i> Registrarse</button>
                                            <button class="btn btn-success float-right" value="Iniciar Sesión" type="submit">Iniciar sesion</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="recoverform">
                        <div class="text-center">
                            <h3 class="text-white" align="left">Formulario de registro</h3>
                            <br><br>
                        </div>
                        <div class="row m-t-20">
                            <!-- Form -->





                            <form class="form-horizontal m-t-20" method="post" action="servAgregarCliente">
                                <div class="row p-b-30">
                                    <div class="col-12">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text bg-success text-white" id="basic-addon1"><i class="ti-user"></i></span>
                                            </div>
                                            <input type="text" class="form-control form-control-lg" placeholder="Ingrese su rut" name="rut" aria-label="rut" aria-describedby="basic-addon1" required>
                                        </div>  
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text bg-success text-white" id="basic-addon"><i class="ti-user"></i></span>
                                            </div>
                                            <input type="text" class="form-control form-control-lg" placeholder="Ingrese su nombre" name="nombre"  aria-label="nombre" aria-describedby="basic-addon1" required>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text bg-success text-white" id="basic-addon2"><i class="ti-user"></i></span>
                                            </div>
                                            <input type="text" class="form-control form-control-lg" placeholder="Ingrese su apellido paterno" name="apellidopat" aria-label="apellidopat" aria-describedby="basic-addon1" required>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text bg-success text-white" id="basic-addon2"><i class="ti-user"></i></span>
                                            </div>
                                            <input type="text" class="form-control form-control-lg" placeholder="Ingrese su apellido materno" name="apellidomat" aria-label="apellidomat" aria-describedby="basic-addon1" required>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text bg-cyan text-white" id="basic-addon1"><i class="ti-email"></i></span>
                                            </div>
                                            <input type="email" class="form-control form-control-lg" placeholder="Ingrese su correo"  name="correo" aria-label="correo" aria-describedby="basic-addon1" required>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text bg-info text-white" id="basic-addon2"><i class="ti-pencil"></i></span>
                                            </div>
                                            <input type="password" class="form-control form-control-lg" placeholder="Ingrese una contraseña" name="password" id="password" aria-label="Password" aria-describedby="basic-addon1" required>
                                        </div>

                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text bg-info text-white" id="basic-addon2"><i class="ti-pencil"></i></span>
                                            </div>
                                            <input type="password" class="form-control form-control-lg" placeholder="Repetir contraseña" name="password"  id="confirm_password" aria-label="Password" aria-describedby="basic-addon1" required>
                                        </div>


                                        <div class="input-group mb-3">                           
                                            <input type="hidden" class="form-control form-control-lg" placeholder="rol" name="rol" value="2"  id="rol" aria-label="rol" aria-describedby="basic-addon1" >
                                        </div>


                                        <div class="input-group mb-3">                           
                                            <input type="hidden" class="form-control form-control-lg" placeholder="estado" name="estado" value="1"  id="confirm_password" aria-label="estado" aria-describedby="basic-addon1" >
                                        </div>

                                    </div>
                                </div>
                                <script src="js/maikol.js" type="text/javascript"></script>
                                <div class="row border-top border-secondary">
                                    <div class="col-12">
                                        <div class="row m-t-20 p-t-20 border-top border-secondary">
                                            <div class="col-12">
                                                <a class="btn btn-success" href="#" id="to-login" name="action">Regresar a iniciar sesion</a> 
                                                <button class="btn btn-info float-right" type="submit" id="BtnAgregar" name="BtnAgregar">Registrar</button>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- Login box.scss -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Page wrapper scss in scafholding.scss -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Page wrapper scss in scafholding.scss -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Right Sidebar -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Right Sidebar -->
            <!-- ============================================================== -->
        </div>






        <script src="js/botonatras.js" type="text/javascript"></script>
        <script src="paginaAdmin/assets/libs/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="paginaAdmin/assets/libs/popper.js/dist/umd/popper.min.js"></script>
        <script src="paginaAdmin/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- ============================================================== -->
        <!-- This page plugin js -->
        <!-- ============================================================== -->
        <script>

            $('[data-toggle="tooltip"]').tooltip();
            $(".preloader").fadeOut();
            // ============================================================== 
            // Login and Recover Password 
            // ============================================================== 
            $('#to-recover').on("click", function () {
                $("#loginform").slideUp();
                $("#recoverform").fadeIn();
            });
            $('#to-login').click(function () {

                $("#recoverform").hide();
                $("#loginform").fadeIn();
            });
        </script>











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





</body>
</html>

