/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MigzMeizter
 */
public class DBConnectionSetter extends DBConnection {
    
    
    public Connection getConnection() {
        try {
            Class.forName(getSQLdriver());
            Connection conn = DriverManager.getConnection(getSQLurl(),getuName(),getpWord());
            return conn;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnectionSetter.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnectionSetter.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
