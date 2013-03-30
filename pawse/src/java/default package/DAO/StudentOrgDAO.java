/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.StudentOrganization;

/**
 *
 * @author Nancy
 */
public abstract class StudentOrgDAO {

    public abstract void addStudentOrganization(StudentOrganization so);

    public abstract void editStudentOrganization(StudentOrganization so);
    
}
