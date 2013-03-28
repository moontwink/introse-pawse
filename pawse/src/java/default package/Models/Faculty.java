/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Nancy
 */
public class Faculty {
    
    private int id;
    private String name;
    private String cellNo;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the cellNo
     */
    public String getCellNo() {
        return cellNo;
    }

    /**
     * @param cellNo the cellNo to set
     */
    public void setCellNo(String cellNo) {
        this.cellNo = cellNo;
    }
    
}
