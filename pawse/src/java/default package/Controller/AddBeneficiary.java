/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.Beneficiary;
import DAO.BeneficiaryDAOsetter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nancy
 */
public class AddBeneficiary extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
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
        
        try {
            Beneficiary beneficiary = new Beneficiary();
            beneficiary.setName(request.getParameter("beneficiaryName"));
            beneficiary.setAddress(request.getParameter("address"));
            beneficiary.setTelephone(request.getParameter("telephone"));
            
            BeneficiaryDAOsetter dao = new BeneficiaryDAOsetter();
            String message = "";
            if(dao.addBeneficiary(beneficiary)){
                message = "**that beneficiary already exists**";
                request.setAttribute("message", message);
                RequestDispatcher rd = request.getRequestDispatcher("addBeneficiary.jsp");
                rd.forward(request, response);
            }
            else{
                message = "**beneficiary `"+beneficiary.getName()+"` has been succesfully added!**";
                request.setAttribute("message", message);
                RequestDispatcher rd = request.getRequestDispatcher("viewBeneficiary.jsp");
                rd.forward(request, response);
            }
            
            
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
