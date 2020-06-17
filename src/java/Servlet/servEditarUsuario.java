/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Clases.EditarUsuario;
import Ent.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author maikolsb
 */
@WebServlet(name = "servEditarUsuario", urlPatterns = {"/servEditarUsuario"})
public class servEditarUsuario extends HttpServlet {

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
        String id = request.getParameter("id");
        String rut = request.getParameter("rut");
        String nombre = request.getParameter("nombre");
        String apellidopat = request.getParameter("apellidopat");
        String apellidomat = request.getParameter("apellidomat");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("password");
        String estado = request.getParameter("estado");
        
        
        
        String idUsuario = request.getParameter("idUsuario");
        
        System.out.println(idUsuario);

      if (request.getParameter("BtnId") != null) {
       response.sendRedirect("AdminUsuariosEditar.jsp?id="+idUsuario);
      }
          
      

         EditarUsuario co = new EditarUsuario();

        if (request.getParameter("BtnActualizar") != null) {
            if (co.Actualizar(rut, nombre, apellidopat, apellidomat, correo, contraseña, Integer.parseInt(estado), Integer.parseInt(idUsuario))) {
               out.println("<script>alert('cliente ACTUALIZADO')</script>");
                response.sendRedirect("AdminUsuariosEditar.jsp");
            } else {
      
                out.println("<script>alert('cliente NO ACTUALIZADO')</script>");
                response.sendRedirect("error.jsp");
            }

        }

//        if (request.getParameter("BtnActualizar") != null) {
//            Usuario us = new Usuario(Integer.parseInt(id), rut, nombre, apellidopat, apellidomat, correo, contraseña, Integer.parseInt(estado));
//System.out.println(" despues del btn");
//            if (!Neg.NegUsuario.ActualizarUsuario(us)) {
//                out.println("<script>alert('cliente NO ACTUALIZADO')</script>");
//                response.sendRedirect("Login.jsp");
//
//            } else {
//                out.println("<script>alert('cliente ACTUALIZADO')</script>");
//                response.sendRedirect("CrudCliente.jsp");
//
//            }
//
//        }
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
