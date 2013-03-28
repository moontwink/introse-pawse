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
import Models.Coordinator;
import DB.DBConnection;

/**
 *
 * @author MigzMeizter
 */
public class CoordinatorDAOsetter extends CoordinatorDAO {
    private String Coordinator;

   
    


//    @Override
//    public void addCoordinator(Coordinator coor) {
//        throw new UnsupportedOperationException("Not supported yet.");
//    }
//
//    @Override
//    public void editCoordinator(Coordinator coor) {
//        throw new UnsupportedOperationException("Not supported yet.");
//    }

    @Override
    public Coordinator checker(String username, String password) {
         try {
            // TODO code application logic here
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection conn = myFactory.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("select * from coordinator where username = ? and password = ?");
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            ResultSet rs = pstmt.executeQuery();
            Coordinator coor=null;
            while (rs.next()){
                coor = new Coordinator();
                coor.setUsername(username);
                coor.setPassword(password);
                
         
            }
            conn.close();
            return coor;
        } catch (SQLException ex) {
            Logger.getLogger(CoordinatorDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

 
}
