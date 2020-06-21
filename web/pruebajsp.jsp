<%-- 
    Document   : pruebajsp
    Created on : 19-06-2020, 17:29:27
    Author     : maikolsb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form class="form-horizontal m-t-20" method="post" action="nuevousuario">
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
                    <div class="form-group">
                        <div class="p-t-20">
                            <button class="btn btn-block btn-lg btn-info" id="BtnAgregar" name="BtnAgregar" type="submit">Registrarse</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
