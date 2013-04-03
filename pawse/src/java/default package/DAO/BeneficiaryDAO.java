/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.Beneficiary;
import java.util.ArrayList;

/**
 *
 * @author MigzMeizter
 */
public abstract class BeneficiaryDAO{

   public abstract Boolean addBeneficiary(Beneficiary beneficiary);
   public abstract void editBeneficiary(Beneficiary beneficiary);
   public abstract void deleteBeneficiary(String name);
   public abstract ArrayList<Beneficiary> getAllBeneficiaries();
   public abstract Beneficiary findBeneficiary(String beneficiaryname);
   
}
