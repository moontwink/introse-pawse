/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.Beneficiary;

/**
 *
 * @author MigzMeizter
 */
public abstract class BeneficiaryDAO{

   public abstract void addBeneficiary(Beneficiary beneficiary);
   public abstract void editBeneficiary(Beneficiary beneficiary);

   
}
