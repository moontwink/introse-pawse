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
    private int Age;
    private int CSOAid;
    private String Name;
    private String Course;

     public Participant(int IDno, int Age, int CSOAid, String Name, String Course){
         this.IDno = IDno;
         this.Age = Age;
         this.CSOAid = CSOAid;
         this.Name = Name;
         this.Course = Course;
     }
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
     * @return the CSOAid
     */
    public int getCSOAid() {
        return CSOAid;
    }

    /**
     * @param CSOAid the CSOAid to set
     */
    public void setCSOAid(int CSOAid) {
        this.CSOAid = CSOAid;
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
}
