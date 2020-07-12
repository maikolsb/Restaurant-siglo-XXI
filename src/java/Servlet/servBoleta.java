/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Clases.Boleta;
import Dao.DaoOrden;
import Dao.DaoReceta;
import Ent.Orden;
import Ent.Receta;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author maikolsb
 */
@WebServlet(name = "servBoleta", urlPatterns = {"/servBoleta"})
public class servBoleta extends HttpServlet {

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

        String pago = request.getParameter("pago");
        String total = request.getParameter("total");
        String id_mesa = request.getSession().getAttribute("mesaid").toString();
        LocalDate localDate = LocalDate.now();
        LocalTime localTime = LocalTime.now();

        String fecha = localDate.getDayOfMonth() + "/" + localDate.getMonthValue() + "/" + localDate.getYear();
        String hora = localTime.getHour() + ":" + localTime.getMinute();

        try {

            int id_mesa_int = Integer.parseInt(id_mesa);
            int pagorial = Dao.DaoFormaPago.getIdFormaPago(pago);
            int total_int = Integer.parseInt(total);

            Boleta bol = new Boleta();

            for (Orden o : new DaoOrden().All()) {
                if (o.getMesa_id() == id_mesa_int) {
                    if (o.getEstado() != 5) {
                        o.setEstado(5);
                        new DaoOrden().UpdateEstado(o);
                    }

                }
            }
           

            int idboleta = bol.registrar(pagorial, id_mesa_int, total_int, fecha, hora);
            request.getSession().setAttribute("idboleta", idboleta);
            response.sendRedirect("ConfirmarPago.jsp");

        } catch (Exception e) {
            response.sendRedirect("error.jsp");
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
