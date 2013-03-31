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
import Models.Beneficiary;
import DB.DBConnection;
import java.util.ArrayList;


/**
 *
 * @author MigzMeizter
 */
public class BeneficiaryDAOsetter extends BeneficiaryDAO {

    @Override
    public Boolean addBeneficiary(Beneficiary beneficiary) {
         try {
            // TODO code application logic here
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("insert into beneficiary(BeneficiaryName,BeneficiaryNumber,BeneficiaryAddress)VALUES(?,?,?)");
            pstmt.setString(1, beneficiary.getName());
            pstmt.setString(2, beneficiary.getTelephone());
            pstmt.setString(3, beneficiary.getAddress());
            pstmt.executeUpdate();
            
            pstmt.close();
            conn.close();
            
           
        } catch (SQLException ex) {
            Logger.getLogger(BeneficiaryDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
            return true;
        }
         return false;
     
    }

    @Override
    public void editBeneficiary(Beneficiary beneficiary) {
       try {
            // TODO code application logic here
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("update beneficiary set BeneficiaryNumber=?,BeneficiaryAddress=? where BeneficiaryName=?");
          
            pstmt.setString(1, beneficiary.getTelephone());
            pstmt.setString(2, beneficiary.getAddress());
            pstmt.setString(3, beneficiary.getName());
            pstmt.executeUpdate();
            
            pstmt.close();
            conn.close();
           
        } catch (SQLException ex) {
            Logger.getLogger(BeneficiaryDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
     
    }

    public ArrayList<Beneficiary> getAllBeneficiaries() {
        ArrayList<Beneficiary> results = new ArrayList<Beneficiary>();
        Beneficiary b;
        
        try {
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("Select * FROM `Beneficiary`");
            ResultSet rs = pstmt.executeQuery();
            
            while(rs.next()){
                b = new Beneficiary();
                b.setName(rs.getString(1));
                b.setTelephone(rs.getString(2));
                b.setAddress(rs.getString(3));
                
                results.add(b);
            }
            
            rs.close();
            pstmt.close();
            conn.close();
           
        } catch (SQLException ex) {
            Logger.getLogger(BeneficiaryDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return results;
    }

    @Override
    public void deleteBeneficiary(String name) {
        try {
            // TODO code application logic here
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("DELETE FROM `beneficiary` where BeneficiaryName= ?");
            pstmt.setString(1, name);
            pstmt.executeUpdate();
            
            pstmt.close();
            conn.close();
           
        } catch (SQLException ex) {
            Logger.getLogger(BeneficiaryDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Beneficiary findBeneficiary(String beneficiaryname) {
        Beneficiary beneficiary = null;
        
        try{
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection connection =  myFactory.getConnection();
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM `beneficiary` WHERE beneficiaryname = ?");
            ps.setString(1, beneficiaryname);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                beneficiary = new Beneficiary();
                beneficiary.setName(rs.getString(1));
                beneficiary.setTelephone(rs.getString(2));
                beneficiary.setAddress(rs.getString(3));
            }
            
            rs.close();
            ps.close();
            connection.close();
            
        }catch(SQLException ex){
            Logger.getLogger(BeneficiaryDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return beneficiary;
    }

    
}
