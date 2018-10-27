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
    private String name;
    private String year;
    private String semester;
    private String lecturer;
    private Integer maxStudents;
    
    public String getName() {
        return name;
    }
    
    public String getYear() {
        return year;
    }
    
    public String getSemester() {
        return semester;
    }
    
    public String getLecturer() {
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
    
    public void setLecturer(String lecturer) {
        this.lecturer = lecturer;
    }
    
    public void setMaxStudentsr(Integer maxStudents) {
        this.maxStudents = maxStudents;
    }
    
            
}
