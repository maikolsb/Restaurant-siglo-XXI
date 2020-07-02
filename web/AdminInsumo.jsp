<%-- 
    Document   : AdminInsumo
    Created on : 01-06-2020, 3:53:18
    Author     : maikolsb
--%>
<%@page import="java.sql.*"%>
<%@page session = "true"%>
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
        <title>Administrador de insumos</title>
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="paginaAdmin/assets/extra-libs/multicheck/multicheck.css">
        <link href="paginaAdmin/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
        <link href="paginaAdmin/dist/css/style.min.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
    </head>
    <body>






        <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->

        <!-- ============================================================== -->
        <!-- Main wrapper - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <div id="main-wrapper">
            <!-- ============================================================== -->
            <!-- Topbar header - style you can find in pages.scss -->
            <!-- ============================================================== -->
            <header class="topbar" data-navbarbg="skin5">
                <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                    <div class="navbar-header" data-logobg="skin5">
                        <!-- This is for the sidebar toggle which is visible on mobile only -->
                        <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                        <!-- ============================================================== -->
                        <!-- Logo -->
                        <!-- ============================================================== -->
                        <a class="navbar-brand" href="AdminUsuarios.jsp">
                            <!-- Logo icon -->
                            <b class="logo-icon p-l-10">

                                <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                                <!-- Dark Logo icon -->
                                <img  width="50" height="50" src="paginaAdmin/assets/images/restaurant.png" alt="homepage" class="light-logo" />

                            </b>
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <span class="logo-text">
                                <!-- dark Logo text -->
                                <img src="paginaAdmin/assets/images/logo-text.png" alt="homepage" class="light-logo" />

                            </span>
                            <!-- Logo icon -->
                            <!-- <b class="logo-icon"> -->
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- <img src="assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->

                            <!-- </b> -->
                            <!--End Logo icon -->
                        </a>
                        <!-- ============================================================== -->
                        <!-- End Logo -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- Toggle which is visible on mobile only -->
                        <!-- ============================================================== -->
                        <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                        <!-- ============================================================== -->
                        <!-- toggle and nav items -->
                        <!-- ============================================================== -->
                        <ul class="navbar-nav float-left mr-auto">
                            <li class="nav-item d-none d-md-block"><a class="nav-link sidebartoggler waves-effect waves-light" href="javascript:void(0)" data-sidebartype="mini-sidebar"><i class="mdi mdi-menu font-24"></i></a></li>
                            <!-- ============================================================== -->
                            <!-- create new -->
                            <!-- ============================================================== -->

                            <!-- ============================================================== -->
                            <!-- Search -->

                        </ul>
                        <!-- ============================================================== -->
                        <!-- Right side toggle and nav items -->
                        <!-- ============================================================== -->
                        <ul class="navbar-nav float-right">
                            <!-- ============================================================== -->
                            <!-- Comment -->

                            <!-- ============================================================== -->

                            <!-- ============================================================== -->
                            <!-- End Messages -->
                            <!-- ============================================================== -->

                            <!-- ============================================================== -->
                            <!-- User profile and search -->
                            <!-- ============================================================== -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="paginaAdmin/assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31"></a>
                                <div class="dropdown-menu dropdown-menu-right user-dd animated">
                                    <%
                                        HttpSession sesion = request.getSession();
                                        String usuario = sesion.getAttribute("elterriblenombre").toString();
                                        String maikol = "prueba";
                                        out.print("<a class='dropdown-item' href='javascript:void(0)'><i class='ti-user m-r-5 m-l-5'></i>" + usuario + "</a>");
                                    %>


                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="javascript:void(0)"><i class="ti-settings m-r-5 m-l-5"></i>Configuracion</a>
                                    <div class="dropdown-divider"></div>
                                    <%
                                        out.print(" <a class='dropdown-item' name='cerrar' href='Login.jsp?cerrar=true'><i class='fa fa-power-off m-r-5 m-l-5'></i>Cerrar sesion</a>");

                                        if (request.getParameter("cerrar") != null) {
                                            request.getSession().invalidate();
                                            response.sendRedirect("Login.jsp");
                                            return;

                                        }

                                    %>

                                    <div class="dropdown-divider"></div>

                                </div>
                            </li>
                            <!-- ============================================================== -->
                            <!-- User profile and search -->
                            <!-- ============================================================== -->
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- ============================================================== -->
            <!-- End Topbar header -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Left Sidebar - style you can find in sidebar.scss  -->
            <!-- ============================================================== -->
            <aside class="left-sidebar" data-sidebarbg="skin5">
                <!-- Sidebar scroll-->
                <div class="scroll-sidebar">
                    <!-- Sidebar navigation-->
                    <nav class="sidebar-nav">
                        <ul id="sidebarnav" class="p-t-30">
                            <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="AdminUsuarios.jsp" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Administrador de Clientes</span></a></li>
                            <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="AdminReservas.jsp" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Administrador de Reservas</span></a></li>
                            <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="AdminInsumo.jsp" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Administrador de insumos</span></a></li>
                            <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="AdminMesas.jsp" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Administrador de mesas</span></a></li>
                            </li>
                        </ul>
                    </nav>
                    <!-- End Sidebar navigation -->
                </div>
                <!-- End Sidebar scroll-->
            </aside>
            <!-- ============================================================== -->
            <!-- End Left Sidebar - style you can find in sidebar.scss  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Page wrapper  -->
            <!-- ============================================================== -->
            <div class="page-wrapper">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="page-breadcrumb">
                    <div class="row">
                        <div class="col-12 d-flex no-block align-items-center">
                            <h4 class="page-title">Administrador de Insumos</h4>
                            <div class="ml-auto text-right">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">

                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Container fluid  -->
                <!-- ============================================================== -->





                </br>
                <div style="padding-left:30px">
                    <button    type="button" class="btn btn-dark float-left" data-toggle="modal" data-target="#naruto">Agregar Insumos</button>
                </div>
                </br>
                <div style="padding-left:30px">
                </div>
                <div class="container">          
                    <div class="modal fade" id="naruto" tabindex="-1" role="dialog" aria-labelledby="narutoLabel">
                        <div class="modal-dialog" role="document" style="z-index: 9999; width: 450px">
                            <div class="modal-content">
                                <div class="modal-header">                            
                                    <h4 class="modal-title" id="myModalLabel">Agregar Insumos</h4>
                                </div>

                                <div class="modal-body">
                                    <form class="form-horizontal m-t-20" method="post" action="servInsumo">
                                        <div class="row p-b-30">
                                            <div class="col-12">


                                                <div class="form-group row">

                                                    <div class="col-md-9">


                                                        <select class="select2 form-control custom-select" name="txtNombre" style="width: 415px; height:36px;" required>


                                                            <option>Nombre</option>
                                                            <optgroup label="Bebidas">
                                                                <option >Jugo</option>
                                                                <option >Pepsi</option>
                                                                <option >Cocacola</option>
                                                                <option >Fanta</option>
                                                                <option >Sprite</option>
                                                                <option >CanadaDry</option>
                                                                <option >Bilz</option>

                                                            </optgroup>
                                                            <optgroup label="Verduras">
                                                                <option >zapallo</option>
                                                                <option >Papas</option>
                                                                <option >Zanahoria</option>
                                                                <option >Lechuga</option>
                                                                <option >Repollo</option>
                                                                <option >Pimenton</option>
                                                                <option >Porotos verdes</option>
                                                                <option >Choclo</option>
                                                                <option >Cebolla</option>
                                                            </optgroup>
                                                            <optgroup label="Pastas">
                                                                <option >Tallarines</option>
                                                                <option >Tortelinis</option>
                                                                <option >Rabioles</option>
                                                                <option >Espirales</option>
                                                                <option >Corbatitas</option>

                                                            </optgroup>
                                                            <optgroup label="Aliños">
                                                                <option >Ajicolor</option>
                                                                <option >Merken</option>
                                                                <option >Pimienta</option>


                                                            </optgroup>
                                                            <optgroup label="Otros">
                                                                <option >Sal</option>
                                                                <option >Arroz</option>
                                                                <option >Aceite</option>
                                                                <option >Aceite de oliva</option>
                                                                <option ></option>

                                                            </optgroup>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text bg-success text-white" id="basic-addon"><i class="ti-user"></i></span>
                                                    </div>
                                                    <input type="text" class="form-control form-control-lg" placeholder="Ingrese cantidad" name="txtStock"  aria-label="txtStock" aria-describedby="basic-addon1" required>
                                                </div>
                                                <div class="input-group mb-3">

                                                    <input type="hidden" class="form-control form-control-lg" placeholder="Ingrese estado" name="txtEstado" value="1" aria-label="txtEstado" aria-describedby="basic-addon1" required>
                                                </div>


                                            </div>
                                        </div>
                                        <script src="js/maikol.js" type="text/javascript"></script>
                                        <div class="row border-top border-secondary">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <div class="p-t-20">
                                                        <button class="btn btn-block btn-lg btn-info" id="BtnAgregar" name="BtnAgregar" type="submit">Agregar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>                    
                        </div>
                    </div>
                </div>   







                <%            //CONECTANOD A LA BASE DE DATOS:
                    Connection con;
                    con = new Controlador.Conexion().getConnection();
                    PreparedStatement ps;
                    //Emnpezamos Listando los Datos de la Tabla Usuario

                    Statement smt;
                    ResultSet rs;
                    smt = con.createStatement();

                    rs = smt.executeQuery("select * from insumo");

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

                                                    <th class="text-center">Id</th>
                                                    <th class="text-center">Nombre</th>
                                                    <th class="text-center">Stock</th>
                                                    <th class="text-center">Estado</th>


                                                </tr>
                                            </thead>
                                            <tbody id="tbodys">
                                                <%                    while (rs.next()) {
                                                %>
                                                <tr>

                                                    <td class="text-center"><%= rs.getString("id")%></td>
                                                    <td class="text-center"><%= rs.getString("nombre")%></td>


                                                    <%
                                                        if (rs.getInt("stock") >= 5) {
                                                    %>
                                                    <td class="text-center"><%= rs.getString("stock")%></td>
                                                    <%}%> <%
                                                        if (rs.getInt("stock") <= 4) {
                                                    %>
                                                    <td class="text-center" style="color:#f80000;">Bajo stock quedan <%= rs.getString("stock")%> unidades</td>
                                                    <%}%> 



                                                    <td class="text-center"><%= rs.getString("estado")%></td>




                                                </tr>
                                                <%}%>
                                            </tbody>
                                            <tfoot>
                                                <tr>

                                                    <th class="text-center">Id</th>
                                                    <th class="text-center">Nombre</th>
                                                    <th class="text-center">Stock</th>
                                                    <th class="text-center">Estado</th>


                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>













                <!-- footer -->
                <!-- ============================================================== -->
                <footer class="footer text-center">
                    Todos los derechos reservados a <a href="#">Restaurant siglo XXI</a>.
                </footer>
                <!-- ============================================================== -->
                <!-- End footer -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Page wrapper  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Wrapper -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- All Jquery -->
        <!-- ============================================================== -->














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
        <!-- this page js -->
        <script src="paginaAdmin/assets/extra-libs/multicheck/datatable-checkbox-init.js"></script>
        <script src="paginaAdmin/assets/extra-libs/multicheck/jquery.multicheck.js"></script>
        <script src="paginaAdmin/assets/extra-libs/DataTables/datatables.min.js"></script>


        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
        <script>
            $(document).ready(function () {
                $('#tablaDatos').DataTable(
                        {
                            "language": {
                                "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
                            },
                        }
                );
            });</script>












    </body>
</html>
