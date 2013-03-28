/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Nancy
 */
public class SOAccount {
    
    private StudentOrganization studentorg;
    private Accounts account;

    /**
     * @return the studentorg
     */
    public StudentOrganization getStudentorg() {
        return studentorg;
    }

    /**
     * @param studentorg the studentorg to set
     */
    public void setStudentorg(StudentOrganization studentorg) {
        this.studentorg = studentorg;
    }

    /**
     * @return the account
     */
    public Accounts getAccount() {
        return account;
    }

    /**
     * @param account the account to set
     */
    public void setAccount(Accounts account) {
        this.account = account;
    }
    
}
