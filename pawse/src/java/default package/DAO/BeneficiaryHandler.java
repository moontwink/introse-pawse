/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.Beneficiary;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nancy
 */
public class BeneficiaryHandler {
    
    public static String addBeneficiary(Beneficiary beneficiary){
        String msg = "Adding Failed.";
        
        try{
        
        }catch(ClassNotFoundException ex){
            Logger.getLogger(BeneficiaryHandler.class.getName()).log(Level.SEVERE, null, ex);
        }catch(SQLException ex){
            Logger.getLogger(BeneficiaryHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return msg;
    }
    
}
