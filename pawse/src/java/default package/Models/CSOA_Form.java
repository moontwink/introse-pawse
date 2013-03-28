/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.Date;

/**
 *
 * @author Nancy
 */
public class CSOA_Form {
    
    private int idCSF;
    private Date date;
    private Date dateFiled;
    private StudentOrganization sponsor;
    private String activityTitle;
    private String activityType;
    private Beneficiary beneficiary;
    private double expense;
    private String faculty_name;
    private int faculty_cellno;
    
    private String accomplisherDesignation;
    private String accomplisher;
    private String accomplisherNo;
    private String accomplisherEmail;
    private String objectives;
    private String programFlow;
    private String status;
    private Coordinator approvedBy;

    /**
     * @return the idCSF
     */
    public int getIdCSF() {
        return idCSF;
    }

    /**
     * @param idCSF the idCSF to set
     */
    public void setIdCSF(int idCSF) {
        this.idCSF = idCSF;
    }

    /**
     * @return the date
     */
    public Date getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(Date date) {
        this.date = date;
    }

    /**
     * @return the sponsor
     */
    public StudentOrganization getSponsor() {
        return sponsor;
    }

    /**
     * @param sponsor the sponsor to set
     */
    public void setSponsor(StudentOrganization sponsor) {
        this.sponsor = sponsor;
    }

    /**
     * @return the activityTitle
     */
    public String getActivityTitle() {
        return activityTitle;
    }

    /**
     * @param activityTitle the activityTitle to set
     */
    public void setActivityTitle(String activityTitle) {
        this.activityTitle = activityTitle;
    }

    /**
     * @return the beneficiary
     */
    public Beneficiary getBeneficiary() {
        return beneficiary;
    }

    /**
     * @param beneficiary the beneficiary to set
     */
    public void setBeneficiary(Beneficiary beneficiary) {
        this.beneficiary = beneficiary;
    }

    /**
     * @return the expense
     */
    public double getExpense() {
        return expense;
    }

    /**
     * @param expense the expense to set
     */
    public void setExpense(double expense) {
        this.expense = expense;
    }



   
    /**
     * @return the accomplisher
     */
    public String getAccomplisher() {
        return accomplisher;
    }

    /**
     * @param accomplisher the accomplisher to set
     */
    public void setAccomplisher(String accomplisher) {
        this.accomplisher = accomplisher;
    }

    /**
     * @return the accomplisherDesignation
     */
    public String getAccomplisherDesignation() {
        return accomplisherDesignation;
    }

    /**
     * @param accomplisherDesignation the accomplisherDesignation to set
     */
    public void setAccomplisherDesignation(String accomplisherDesignation) {
        this.accomplisherDesignation = accomplisherDesignation;
    }

    /**
     * @return the accomplisherNo
     */
    public String getAccomplisherNo() {
        return accomplisherNo;
    }

    /**
     * @param accomplisherNo the accomplisherNo to set
     */
    public void setAccomplisherNo(String accomplisherNo) {
        this.accomplisherNo = accomplisherNo;
    }

    /**
     * @return the accomplisherEmail
     */
    public String getAccomplisherEmail() {
        return accomplisherEmail;
    }

    /**
     * @param accomplisherEmail the accomplisherEmail to set
     */
    public void setAccomplisherEmail(String accomplisherEmail) {
        this.accomplisherEmail = accomplisherEmail;
    }

    /**
     * @return the objectives
     */
    public String getObjectives() {
        return objectives;
    }

    /**
     * @param objectives the objectives to set
     */
    public void setObjectives(String objectives) {
        this.objectives = objectives;
    }

    /**
     * @return the programFlow
     */
    public String getProgramFlow() {
        return programFlow;
    }

    /**
     * @param programFlow the programFlow to set
     */
    public void setProgramFlow(String programFlow) {
        this.programFlow = programFlow;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the approvedBy
     */
    public Coordinator getApprovedBy() {
        return approvedBy;
    }

    /**
     * @param approvedBy the approvedBy to set
     */
    public void setApprovedBy(Coordinator approvedBy) {
        this.approvedBy = approvedBy;
    }

    /**
     * @return the activityType
     */
    public String getActivityType() {
        return activityType;
    }

    /**
     * @param activityType the activityType to set
     */
    public void setActivityType(String activityType) {
        this.activityType = activityType;
    }

    /**
     * @return the dateFiled
     */
    public Date getDateFiled() {
        return dateFiled;
    }

    /**
     * @param dateFiled the dateFiled to set
     */
    public void setDateFiled(Date dateFiled) {
        this.dateFiled = dateFiled;
    }



    /**
     * @return the faculty_name
     */
    public String getFaculty_name() {
        return faculty_name;
    }

    /**
     * @param faculty_name the faculty_name to set
     */
    public void setFaculty_name(String faculty_name) {
        this.faculty_name = faculty_name;
    }

    /**
     * @return the faculty_cellno
     */
    public int getFaculty_cellno() {
        return faculty_cellno;
    }

    /**
     * @param faculty_cellno the faculty_cellno to set
     */
    public void setFaculty_cellno(int faculty_cellno) {
        this.faculty_cellno = faculty_cellno;
    }


    
}
