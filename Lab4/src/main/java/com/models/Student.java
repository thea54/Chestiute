/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

import java.util.List;

/**
 *
 * @author Asus
 */
public class Student {
    private Integer id;
    private String name;
    private String email;
    private List<Course> preferences;
    private List<Course> courses;
    
    public String getName() {
        return name;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setName(String name) {
        this.name = name;
        
    }
    
    public void setEmail(String email) {
        this.email = email;
        
    }

    /**
     * @return the preferences
     */
    public List<Course> getPreferences() {
        return preferences;
    }

    /**
     * @param preferences the preferences to set
     */
    public void setPreferences(List<Course> preferences) {
        this.preferences = preferences;
    }

    /**
     * @return the courses
     */
    public List<Course> getCourses() {
        return courses;
    }

    /**
     * @param courses the courses to set
     */
    public void setCourses(List<Course> courses) {
        this.courses = courses;
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
    
    
    
}
