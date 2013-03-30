/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DB.DBConnection;
import Models.StudentOrganization;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nancy
 */
public class StudentOrgDAOsetter extends StudentOrgDAO {
    
    @Override
    public Boolean addStudentOrganization(StudentOrganization so){
        try{
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection connection =  myFactory.getConnection();
            PreparedStatement ps = connection.prepareStatement("INSERT INTO `studentorganization` VALUES (?,?,?);");
            //INSERT INTO `studentorganization` VALUES (orgname, username, password);
            
            ps.setString(1, so.getName());
            ps.setString(2, so.getUsername());
            ps.setString(3, so.getPassword());
            ps.executeUpdate();
            connection.close();
            
        }catch(SQLException ex){
            Logger.getLogger(StudentOrgDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
            return true;
        }
        return false;
    }

    @Override
    public Boolean editStudentOrganization(StudentOrganization so){
        try{
            DBConnection MyFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection connection = MyFactory.getConnection();
            PreparedStatement ps = connection.prepareStatement("UPDATE `studentorganization` SET username = ?, password = ? WHERE orgname = ?");
            
            ps.setString(1, so.getUsername());
            ps.setString(2, so.getPassword());
            ps.setString(3, so.getName());
            ps.executeUpdate();
            connection.close();
            
        }catch(SQLException ex){
            Logger.getLogger(StudentOrgDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
            return true;
        }
        return false;
    }

    @Override
    public StudentOrganization findStudentOrg(String username) {
        StudentOrganization so = null;
        
        try{
            DBConnection myFactory = DBConnection.getInstance(SQLDAO.MYSQL);
            Connection connection =  myFactory.getConnection();
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM `studentorganization` WHERE username = ?");
            ps.setString(1, username);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                so = new StudentOrganization();
                so.setName(rs.getString(1));
                so.setUsername(rs.getString(2));
                so.setPassword(rs.getString(3));
            }
            
        }catch(SQLException ex){
            Logger.getLogger(StudentOrgDAOsetter.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return so;
    }
    
}
