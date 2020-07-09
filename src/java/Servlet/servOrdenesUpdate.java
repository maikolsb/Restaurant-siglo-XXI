/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Dao.DaoOrden;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sebastian
 */
@WebServlet(name = "servOrdenesUpdate", urlPatterns = {"/servOrdenesUpdate"})
public class servOrdenesUpdate extends HttpServlet {

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
        String id_mesa_str = (String) request.getParameter("idmesa");
        response.setContentType("text/plain");
        int id_mesa = 0;
        if(id_mesa_str==null){
            response.sendRedirect("error.jsp");
        }        
        try{
            id_mesa = Integer.parseInt(id_mesa_str);
        } catch(Exception e) {
            System.out.println(e.getMessage());
            response.sendRedirect("error.jsp");
        }
        
        try (PrintWriter out = response.getWriter()) {
            if(new DaoOrden().MesaCambio(id_mesa)){
                out.print("si");
            }
            else{
                out.print("no");
            }
        }
    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("/");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
