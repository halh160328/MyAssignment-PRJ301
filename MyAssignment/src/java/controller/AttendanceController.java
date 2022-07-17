/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AttendanceDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Attendance;
import model.Group;
import model.Student;

public class AttendanceController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AttendanceController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AttendanceController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cID = request.getParameter("cid");
        int gID = Integer.parseInt(request.getParameter("gid"));
        AttendanceDBContext adb = new AttendanceDBContext();
        ArrayList<Attendance> studentList = adb.listStudent(cID, gID);
        ArrayList<Group> groupList = adb.groupList(gID);
        request.setAttribute("listGroup", groupList);
        request.setAttribute("listStudent", studentList);
        request.setAttribute("cid", cID);
        request.setAttribute("gid", gID);
        request.getRequestDispatcher("attendance.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cid = request.getParameter("cid");
        int gid = Integer.parseInt(request.getParameter("gid"));
        AttendanceDBContext adb = new AttendanceDBContext();
        ArrayList<Attendance> studentList = adb.listStudent(cid, gid);
        for (Attendance attendance : studentList) {
            Attendance att = new Attendance();
            att.setStudent(attendance.getStudent());
            att.setCourse(attendance.getCourse());
            att.setGroup(attendance.getGroup());
            att.setAttendance(request.getParameter("attend" + attendance.getStudent().getId()).equals("no"));
            att.setNote(request.getParameter("note"));
            adb.insert(att);
        }
        request.getRequestDispatcher("insert_confirm.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
