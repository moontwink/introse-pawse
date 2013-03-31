/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.CSOA_Form;
import java.util.ArrayList;


/**
 *
 * @author gilpaulo
 */
public abstract class CSOA_FormDAO{
    public abstract void addCSOA_FormDAO(CSOA_Form csoa_form);
    public abstract ArrayList<CSOA_Form> getAllForms();
}
