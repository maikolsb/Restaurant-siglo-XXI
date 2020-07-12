<%-- 
    Document   : ConfirmarPagoWebpay
    Created on : 11-07-2020, 23:04:33
    Author     : Sebastian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <style>
            .loader {
                border: 16px solid #f3f3f3; /* Light grey */
                border-top: 16px solid #3498db; /* Blue */
                border-radius: 50%;
                width: 120px;
                height: 120px;
                animation: spin 2s linear infinite;
                margin: auto;
            }

            @keyframes spin {
                0% { transform: rotate(0deg); }
                100% { transform: rotate(360deg); }
            }
        </style>

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










        </aside>
        <section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(usuarios/images/bg-title-page-02.jpg);">
            <h2 class="tit6 t-center">
                Pago
                <img src="usuarios/images/icons/logosiglo.png" alt="" width="30%" >
            </h2>
        </section>












        <%
            String mesasession = (String) session.getAttribute("mesaid");
            int boletaid = (int) session.getAttribute("idboleta");
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
                                        <span class="tit2 t-center" >
                                            Confirmando pago
                                        </span>
                                        <div class="loader"></div> 
                                        <h4 class="font-bold">Esperando Confirmacion...</h4>


                                        </p>

                                    </address>
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

                        </div>
                    </div>
                </div>
            </div>
        </footer>


        <script>
            (function (o, n, e, p, a, y) {
                var s = n.createElement(p);
                s.type = "text/javascript";
                s.src = e;
                s.onload = s.onreadystatechange = function () {
                    if (!o && (!s.readyState
                            || s.readyState === "loaded")) {
                        y();
                    }
                };
                var t = n.getElementsByTagName("script")[0];
                p = t.parentNode;
                p.insertBefore(s, t);
            })(false, document, "https://unpkg.com/transbank-onepay-frontend-sdk@1/lib/merchant.onepay.min.js",
                    "script", window, function () {
                        console.log("Onepay JS library successfully loaded.");
                    });
        </script>

        <script>
            function llamarOnepay() {
                Onepay.checkout({
                    endpoint: './transaction-create',
                    commerceLogo: 'usuarios/images/icons/logosiglo.png',
                    callbackUrl: './ServOnepayResult',
                    transactionDescription: 'Set de pelotas',
                    onclose: function (status) {
                        console.log('el estado recibido es: ', status);
                    }
                });
            }

        </script>

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


        <script type="text/javascript">
            function confirmarPago(idMesa) {
                $.ajax({
                    type: 'GET',
                    url: 'servConfirmPago?idmesa=' + idMesa,
                    contentType: 'text/plain',
                    dataType: 'text'
                }).done(function (r) {
                    if (r === 'si') {
                        location.href = 'FinalizarPago.jsp'
                    }
                });
            }
            setTimeout(llamarOnepay,5000);
            //setInterval(confirmarPago, 5000,<%=boletaid%>);
        </script>
    </body>
</html>
