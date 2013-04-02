/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.Feedback;
import java.util.ArrayList;


/**
 *
 * @author Nancy
 */
public abstract class FeedbackDAO {
    
   public abstract void addFeedback(Feedback feedback);
   public abstract ArrayList<Feedback> getAllFeedbacks();
   public abstract ArrayList<Feedback> getAllFeedbacksByBeneficiary(String beneficiary);
    
}
