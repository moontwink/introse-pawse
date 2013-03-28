/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author MigzMeizter
 */
public abstract class SQLDAO {
    
      public static final int MYSQL = 1;
    public static final int ORACLE = 2;
    
    public static SQLDAO getInstance(int dataSource){
        switch (dataSource){
            case MYSQL: return new SQLDAOsetter();
        }
        return null;
    }
    
   public abstract BeneficiaryDAO createBeneficiaryDAO();

    
    
}
