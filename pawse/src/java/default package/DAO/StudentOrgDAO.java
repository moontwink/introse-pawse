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

    public abstract Boolean addStudentOrganization(StudentOrganization so);
    public abstract Boolean editStudentOrganization(StudentOrganization so);
    public abstract StudentOrganization findStudentOrg(String username);
    
}