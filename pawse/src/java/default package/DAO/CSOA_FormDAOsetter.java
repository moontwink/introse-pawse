/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DB.DBConnection;
import Models.CSOA_Form;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author gilpaulo
 */
public class CSOA_FormDAOsetter extends CSOA_FormDAO {

    @Override
    public void addCSOA_FormDAO(CSOA_Form csoa_form) {
       try {
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("insert into `csoa_form` (ActivityType, Date_filed, SponsoringOrganization, TitleOfActivity, ActivityDate, Beneficiary, TotalProjectedExpense, Faculty, Faculty_Number, Accomplisher, Accomplisher_Designation, Accomplisher_Number, Accomplisher_Email, Objectives, ProgramFlow, beginTime, endTime) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
     
            pstmt.setString(1, csoa_form.getActivityType());
            pstmt.setString(2, csoa_form.getDateFiled());
            pstmt.setString(3, csoa_form.getSponsor().getName());
            pstmt.setString(4, csoa_form.getActivityTitle());
            pstmt.setString(5, csoa_form.getActivityDate());

            pstmt.setString(6, csoa_form.getBeneficiary().getName());
            pstmt.setDouble(7, csoa_form.getExpense());
            
            pstmt.setString(8, csoa_form.getFaculty_name());
            pstmt.setString(9, csoa_form.getFaculty_cellno());
            
            pstmt.setString(10, csoa_form.getAccomplisher());
            pstmt.setString(11, csoa_form.getAccomplisherDesignation());
            pstmt.setString(12, csoa_form.getAccomplisherNo());
            pstmt.setString(13, csoa_form.getAccomplisherEmail());
            
            pstmt.setString(14, csoa_form.getObjectives());
            pstmt.setString(15, csoa_form.getProgramFlow());
            
            pstmt.setString(16, csoa_form.getBeginTime());
            pstmt.setString(17, csoa_form.getEndTime());
            
            pstmt.executeUpdate();
            
            pstmt.close();
            conn.close();
           
        } catch (SQLException ex) {
            Logger.getLogger(CSOA_FormDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }        
    }

    @Override
    public ArrayList<CSOA_Form> getAllFormsByOrg(String sponsor) {
        ArrayList<CSOA_Form> results = new ArrayList<CSOA_Form>();
        CSOA_Form form;
        
        try{
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection connection = myFactory.getConnection();
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM `csoa_form` WHERE SponsoringOrganization = ? ORDER BY Date_filed DESC");
            ps.setString(1, sponsor);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                form = new CSOA_Form();
                form.setIdCSF(rs.getInt("idCSF"));
                form.setActivityType(rs.getString("ActivityType"));
                form.setDateFiled(rs.getString("Date_filed"));
                
                StudentOrgDAOsetter SOdao = new StudentOrgDAOsetter();
                form.setSponsor(SOdao.findStudentOrgByName(rs.getString("SponsoringOrganization")));
                
                form.setActivityTitle(rs.getString("TitleOfActivity"));
                form.setActivityDate(rs.getString("ActivityDate"));
                
                BeneficiaryDAOsetter bDAO = new BeneficiaryDAOsetter();
                form.setBeneficiary(bDAO.findBeneficiary(rs.getString("Beneficiary")));
                
                form.setExpense(rs.getDouble("TotalProjectedExpense"));
                form.setFaculty_name(rs.getString("Faculty"));
                form.setFaculty_cellno(rs.getString("Faculty_Number"));
                form.setAccomplisher(rs.getString("Accomplisher"));
                form.setAccomplisherDesignation(rs.getString("Accomplisher_Designation"));
                form.setAccomplisherNo(rs.getString("Accomplisher_Number"));
                form.setAccomplisherEmail(rs.getString("Accomplisher_Email"));
                form.setObjectives(rs.getString("Objectives"));
                form.setProgramFlow(rs.getString("ProgramFlow"));
                form.setStatus(rs.getString("Status"));
                form.setApprovedBy(rs.getString("Coordinator_ApprovedBy"));
                form.setComments(rs.getString("Comments"));
                form.setBeginTime(rs.getString("beginTime"));
                form.setEndTime(rs.getString("endTime"));
                
                results.add(form);
            }
            
            rs.close();
            ps.close();
            connection.close(); 
            
        }catch(SQLException ex){
            Logger.getLogger(CSOA_FormDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return results;
    }
    
}
