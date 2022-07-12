/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

public class CourseGroup {

    private int id;
    private ArrayList<Course> courses;
    private ArrayList<Group> groups;
    private ArrayList<Lectuter> lectuters;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ArrayList<Course> getCourses() {
        return courses;
    }

    public void setCourses(ArrayList<Course> courses) {
        this.courses = courses;
    }

    public ArrayList<Group> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<Group> groups) {
        this.groups = groups;
    }

    public ArrayList<Lectuter> getLectuters() {
        return lectuters;
    }

    public void setLectuters(ArrayList<Lectuter> lectuters) {
        this.lectuters = lectuters;
    }

}
