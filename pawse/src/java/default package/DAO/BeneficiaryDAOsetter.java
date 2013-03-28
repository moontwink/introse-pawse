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


/**
 *
 * @author MigzMeizter
 */
public class BeneficiaryDAOsetter extends BeneficiaryDAO {

    @Override
    public void addBeneficiary(Beneficiary beneficiary) {
         try {
            // TODO code application logic here
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("insert into beneficiary(BeneficiaryName,BeneficiaryNumber,BeneficiaryAddress)VALUES(?,?,?)");
            pstmt.setString(1, beneficiary.getName());
            pstmt.setString(2, beneficiary.getAddress());
            pstmt.setString(3, beneficiary.getTelephone());
            pstmt.executeUpdate();
            conn.close();
           
        } catch (SQLException ex) {
            Logger.getLogger(BeneficiaryDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
     
    }

    @Override
    public void editBeneficiary(Beneficiary beneficiary) {
       try {
            // TODO code application logic here
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("update beneficiary set BeneficiaryName=?,BeneficiaryNumber=?,BeneficiaryAddress=? where BeneficiaryName=?");
           pstmt.setString(1, beneficiary.getName());
            pstmt.setString(2, beneficiary.getAddress());
            pstmt.setString(3, beneficiary.getTelephone());
            pstmt.executeUpdate();
            conn.close();
           
        } catch (SQLException ex) {
            Logger.getLogger(BeneficiaryDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
     
    }

    
}
