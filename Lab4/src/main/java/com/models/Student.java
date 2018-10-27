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
    private String name;
    private String email;
    private List<String> preferences;
    private List<String> courses;
    
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
    public List<String> getPreferences() {
        return preferences;
    }

    /**
     * @param preferences the preferences to set
     */
    public void setPreferences(List<String> preferences) {
        this.preferences = preferences;
    }

    /**
     * @return the courses
     */
    public List<String> getCourses() {
        return courses;
    }

    /**
     * @param courses the courses to set
     */
    public void setCourses(List<String> courses) {
        this.courses = courses;
    }
    
    
    
}
