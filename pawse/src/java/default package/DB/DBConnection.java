/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import DAO.SQLDAO;
import java.sql.Connection;

/**
 *
 * @author MigzMeizter
 */
public abstract class DBConnection {
    
    private static String uName;
    private static String pWord;
    private static String SQLdriver;
    private static String SQLurl;
    
    
    
    public static DBConnection getInstance(int dataSource){
        switch (dataSource){
            case SQLDAO.MYSQL: 
                
                uName  = "root";
                pWord = "krishiapalma";
                SQLdriver  = "com.mysql.jdbc.Driver";
                SQLurl  = "jdbc:mysql://localhost:3306/outracker";
               
            break;
        }
        return new DBConnectionSetter();
    }
    
    public abstract Connection getConnection();

    /**
     * @return the uName
     */
    public static String getuName() {
        return uName;
    }

    /**
     * @param auName the uName to set
     */
    public static void setuName(String auName) {
        uName = auName;
    }

    /**
     * @return the pWord
     */
    public static String getpWord() {
        return pWord;
    }

    /**
     * @param apWord the pWord to set
     */
    public static void setpWord(String apWord) {
        pWord = apWord;
    }

    /**
     * @return the SQLdriver
     */
    public static String getSQLdriver() {
        return SQLdriver;
    }

    /**
     * @param aSQLdriver the SQLdriver to set
     */
    public static void setSQLdriver(String aSQLdriver) {
        SQLdriver = aSQLdriver;
    }

    /**
     * @return the SQLurl
     */
    public static String getSQLurl() {
        return SQLurl;
    }

    /**
     * @param aSQLurl the SQLurl to set
     */
    public static void setSQLurl(String aSQLurl) {
        SQLurl = aSQLurl;
    }
    
    
}
