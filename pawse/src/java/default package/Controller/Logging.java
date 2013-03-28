/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


//import Models.StudentOrganization;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Models.Coordinator;
import DAO.CoordinatorDAO; //For the mean time because only coordinator contains the username and password as of now.
import DAO.SQLDAO;
import Models.StudentOrganization;


/**
 *
 * @author Nancy
 */
public class Logging extends HttpServlet {

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
            
            HttpSession session = request.getSession();
            Coordinator coor = (Coordinator) session.getAttribute("coor");
            
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            SQLDAO myDAOFactory = SQLDAO.getInstance(SQLDAO.MYSQL);
            //UserDAO uDAO = myDAOFactory.createUserDAO();
            if(username == null || password == null){
                response.sendRedirect("Login.jsp");
            }
            
            else{
                
                if(username.equals("admin") && password.equals("12345")){
                    Coordinator c = new Coordinator();
                    c.setUsername(username);
                    c.setPassword(password);
                    session.setAttribute("user", c);
                    response.sendRedirect("Cindex.jsp");
                } else if (username.equals(username) && password.equals(0)) {
                    StudentOrganization so = new StudentOrganization();
                    so.setUsername(username);
                    so.setPassword(password);
                    session.setAttribute("user", so);
                    response.sendRedirect("SOindex.jsp");
                } else {
                    response.sendRedirect("Login.jsp");
                }
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
