/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author gilpaulo
 */
public class Participant {
    private int IDno;
    private String Name;
    private int Age;

    private int CSOAid;
    private int shit;

    private String Course;
    private String csfID;

    /**
     * @return the IDno
     */
    public int getIDno() {
        return IDno;
    }

    /**
     * @param IDno the IDno to set
     */
    public void setIDno(int IDno) {
        this.IDno = IDno;
    }

    /**
     * @return the Name
     */
    public String getName() {
        return Name;
    }

    /**
     * @param Name the Name to set
     */
    public void setName(String Name) {
        this.Name = Name;
    }

    /**
     * @return the Age
     */
    public int getAge() {
        return Age;
    }

    /**
     * @param Age the Age to set
     */
    public void setAge(int Age) {
        this.Age = Age;
    }

    /**
     * @return the Course
     */
    public String getCourse() {
        return Course;
    }

    /**
     * @param Course the Course to set
     */
    public void setCourse(String Course) {
        this.Course = Course;
    }

    /**
     * @return the csfID
     */
    public String getCsfID() {
        return csfID;
    }

    /**
     * @param csfID the csfID to set
     */
    public void setCsfID(String csfID) {
        this.csfID = csfID;
    }
    
    

}
