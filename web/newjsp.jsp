<%-- 
    Document   : formulario
    Created on : 26-06-2020, 18:39:28
    Author     : maikolsb
--%>
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
        <title>Administrador de mesas</title>
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
                                                    <th class="text-center">mesa</th>
                                                    <th class="text-center">receta</th>


                                                </tr>
                                            </thead>
                                            <tbody id="tbodys">
                                                <%                    while (rs.next()) {
                                                %>
                                                <tr>
                                                    
                                                    <td class="text-center"><%= rs.getString("cantidad")%></td>
                                                    <%
                                                        if (rs.getInt("estado") == 1) {
                                                    %>
                                                    <td class="text-center"> Activo</td>
                                                    <%}%> <%
                                                        if (rs.getInt("estado") >= 2) {
                                                    %>
                                                    <td class="text-center"> Inactivo</td>
                                                    <%}%> 
                                                    <td class="text-center"><%= rs.getString("mesa_id")%></td>
                                                    <td class="text-center">
                                                        
                                                        <%=

                                                        Dao.DaoReceta.Read(rs.getInt("receta_id")).nombre
                                                        

                                                        %>
                                                    </td>
                                                    
                                            


                                                </tr>
                                                <%}%>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                 
                                                    <th class="text-center">Cantidad</th>
                                                    <th class="text-center">Estado</th>
                                                    <th class="text-center">mesa</th>
                                                    <th class="text-center">receta</th>

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