/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

/**
 *
 * @author Asus
 */
public class Course {
    private Integer id;
    private String name;
    private String year;
    private String semester;
    private Lecturer lecturer;
    private Integer maxStudents;
    private Package packageObj;
    
    public String getName() {
        return name;
    }
    
    public String getYear() {
        return year;
    }
    
    public String getSemester() {
        return semester;
    }
    
    public Lecturer getLecturer() {
        return lecturer;
    }
    
    public Integer getMaxStudents() {
        return maxStudents;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public void setYear(String year) {
        this.year = year;
    }
    
    public void setSemester(String semester) {
        this.semester = semester;
    }
    
    public void setLecturer(Lecturer lecturer) {
        this.lecturer = lecturer;
    }
    
    public void setMaxStudents(Integer maxStudents) {
        this.maxStudents = maxStudents;
    }

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the packageObj
     */
    public Package getPackageObj() {
        return packageObj;
    }

    /**
     * @param packageObj the packageObj to set
     */
    public void setPackageObj(Package packageObj) {
        this.packageObj = packageObj;
    }
    
            
}
