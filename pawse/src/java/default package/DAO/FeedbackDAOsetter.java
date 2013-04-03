/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import DB.DBConnection;
import Models.Feedback;
import java.util.ArrayList;

/**
 *
 * @author Nancy
 */
public class FeedbackDAOsetter extends FeedbackDAO{

    @Override
    public void addFeedback(Feedback feedback) {
        try {
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("INSERT INTO `feedback` (Feedback, Beneficiary, Author) VALUES (?,?,?);");
     
            pstmt.setString(1, feedback.getFeedback());
            pstmt.setString(2, feedback.getBeneficiary().getName());
            pstmt.setString(3, feedback.getAuthor());
            
            pstmt.executeUpdate();
            
            pstmt.close();
            conn.close();
           
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }   
    }

    @Override
    public ArrayList<Feedback> getAllFeedbacks() {
        ArrayList<Feedback> results = new ArrayList<Feedback>();
        Feedback f;
        
        try {
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("Select * FROM `feedback` ORDER BY beneficiary");
            ResultSet rs = pstmt.executeQuery();
            
            BeneficiaryDAOsetter dao = new BeneficiaryDAOsetter();
            while(rs.next()){
                f = new Feedback();
                f.setFeedback(rs.getString("feedback"));
                f.setBeneficiary(dao.findBeneficiary(rs.getString("beneficiary")));
                f.setAuthor(rs.getString("author"));
                results.add(f);
            }
            
            rs.close();
            pstmt.close();
            conn.close();
           
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return results;
    }

    @Override
    public ArrayList<Feedback> getAllFeedbacksByBeneficiary(String beneficiary) {
        ArrayList<Feedback> results = new ArrayList<Feedback>();
        Feedback f;
        
        try {
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("Select * FROM `feedback` WHERE Beneficiary = ?");
            pstmt.setString(1, beneficiary);
            
            ResultSet rs = pstmt.executeQuery();
            
            BeneficiaryDAOsetter dao = new BeneficiaryDAOsetter();
            while(rs.next()){
                f = new Feedback();
                f.setFeedback(rs.getString("feedback"));
                f.setBeneficiary(dao.findBeneficiary(rs.getString("beneficiary")));
                f.setAuthor(rs.getString("author"));
                results.add(f);
            }
            
            rs.close();
            pstmt.close();
            conn.close();
           
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return results;
    }
    
}
