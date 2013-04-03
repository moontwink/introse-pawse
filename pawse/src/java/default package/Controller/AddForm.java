/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.BeneficiaryDAOsetter;
import DAO.CSOA_FormDAOsetter;
import DAO.StudentOrgDAOsetter;
import Models.CSOA_Form;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nancy
 */
public class AddForm extends HttpServlet {

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
            //out.println("<html><body>SERVLET /ADDFORM ..STRING..SPONSOR.."+request.getParameter("sponsor")+ "</body></html>");
            
            
            CSOA_Form form = new CSOA_Form();
            form.setActivityType(request.getParameter("actype"));
            form.setDateFiled(request.getParameter("datefiled"));
            
            StudentOrgDAOsetter soDAO = new StudentOrgDAOsetter();
            form.setSponsor(soDAO.findStudentOrgByName(request.getParameter("sponsor")));
            
            form.setActivityTitle(request.getParameter("actitle"));
            form.setActivityDate(request.getParameter("actdate"));
            
            BeneficiaryDAOsetter bDAO = new BeneficiaryDAOsetter();
            form.setBeneficiary(bDAO.findBeneficiary(request.getParameter("selbenefit")));

            form.setExpense(Double.parseDouble(request.getParameter("expense")));
            form.setFaculty_name(request.getParameter("faculty"));
            form.setFaculty_cellno(request.getParameter("facultyno"));
            form.setAccomplisher(request.getParameter("accomplisher"));
            form.setAccomplisherDesignation(request.getParameter("designation"));
            form.setAccomplisherNo(request.getParameter("accompNo"));
            form.setAccomplisherEmail(request.getParameter("accompEmail"));
            form.setObjectives(request.getParameter("objectives"));
            form.setProgramFlow(request.getParameter("program"));
            form.setBeginTime(request.getParameter("beginTime"));
            form.setEndTime(request.getParameter("endTime"));
            
            CSOA_FormDAOsetter csoaDAO = new CSOA_FormDAOsetter();
            csoaDAO.addCSOA_FormDAO(form);
            response.sendRedirect("SOview_form.jsp");
            
            
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
