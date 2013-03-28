/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author MigzMeizter
 */
public class SQLDAOsetter extends SQLDAO {

    @Override
    public BeneficiaryDAO createBeneficiaryDAO() {
        return new BeneficiaryDAOsetter();
    }
    
   

}
