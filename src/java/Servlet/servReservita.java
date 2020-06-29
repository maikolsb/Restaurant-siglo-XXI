/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Clases.Reservita;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author maikolsb
 */
@WebServlet(name = "servReservita", urlPatterns = {"/servReservita"})
public class servReservita extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

//                private String fecha;
//    private String hora;
//    private String cantidad;
//    private String nombre;
//    private String correo;
//    private String mesa;
        String fecha = request.getParameter("txtFecha");
        String hora = request.getParameter("txtHora");
        String cantidad = request.getParameter("txtCantidad");
        String usuario_id = request.getParameter("txtNombre");
        String telefono = request.getParameter("txtTelefono");
        String mesa_id = request.getParameter("txtMesa");
        String estado = request.getParameter("txtEstado");
        
        String id= request.getParameter("id");
        
        String idReserva= request.getParameter("id");
        
        if (request.getParameter("BtnReserva") != null) {
       response.sendRedirect("CancelarReserva.jsp?id="+idReserva);
      }

        Reservita re = new Reservita();

        if (re.registrar(fecha, hora, cantidad, Integer.parseInt(usuario_id), Integer.parseInt(telefono), Integer.parseInt(mesa_id), Integer.parseInt(estado))) {
            response.sendRedirect("menu.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }

        if (request.getParameter("BtnActualizar") != null) {
            if (re.Actualizar(Integer.parseInt(estado),Integer.parseInt(id))) {
                out.println("<script>alert('cliente ACTUALIZADO')</script>");
                response.sendRedirect("AdminUsuariosEditar.jsp");
            } else {

                out.println("<script>alert('cliente NO ACTUALIZADO')</script>");
                response.sendRedirect("error.jsp");
            }

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
