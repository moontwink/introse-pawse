/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BeneficiaryDAOsetter;
import DAO.FeedbackDAOsetter;
import Models.Feedback;
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
public class addFeedback extends HttpServlet {

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
            BeneficiaryDAOsetter bDAO = new BeneficiaryDAOsetter();
            FeedbackDAOsetter fDAO = new FeedbackDAOsetter();
                    
            Feedback feedback = new Feedback();
            feedback.setFeedback(request.getParameter("feedback"));
            feedback.setBeneficiary(bDAO.findBeneficiary(request.getParameter("feedbackbenefit")));
            feedback.setAuthor(request.getParameter("author"));
            
            fDAO.addFeedback(feedback);
            
            request.setAttribute("benefitlist", request.getParameter("feedbackbenefit"));
            
            RequestDispatcher rd;
            if(request.getParameter("author").equalsIgnoreCase("cosca")){
                rd = request.getRequestDispatcher("editBeneficiary.jsp");
            }else{
                rd = request.getRequestDispatcher("SOviewFeedback.jsp");
            }
            
            rd.forward(request, response);
            
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
