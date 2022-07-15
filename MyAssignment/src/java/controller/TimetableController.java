/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.LectuterDBContext;
import dal.SlotDBContext;
import dal.TimetableDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Lectuter;
import model.Slot;
import model.Timetable;

public class TimetableController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TimetableController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TimetableController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Lectuter lec = (Lectuter) session.getAttribute("lec");
        SlotDBContext sdb = new SlotDBContext();
        TimetableDBContext tdb = new TimetableDBContext();
        ArrayList<Timetable> time_table = new ArrayList<>();
        ArrayList<Slot> slots = new ArrayList<>();
        slots = sdb.slotList();
        time_table = tdb.listByLecID(lec.getId());
        ArrayList<Timetable> monday = new ArrayList<>();
        ArrayList<Timetable> tuesday = new ArrayList<>();
        ArrayList<Timetable> wednesday = new ArrayList<>();
        ArrayList<Timetable> thursday = new ArrayList<>();
        ArrayList<Timetable> friday = new ArrayList<>();
        ArrayList<Timetable> saturday = new ArrayList<>();
        ArrayList<Timetable> sunday = new ArrayList<>();
        for (Timetable t : time_table) {
            if (t.getDay().equalsIgnoreCase("Monday")) {
                t.getCourse();
                t.getGroup();
                monday.add(t);
            } else if (t.getDay().equalsIgnoreCase("Tuesday")) {
                t.getCourse();
                t.getGroup();
                tuesday.add(t);
            } else if (t.getDay().equalsIgnoreCase("Wednesday")) {
                t.getCourse();
                t.getGroup();
                wednesday.add(t);
            } else if (t.getDay().equalsIgnoreCase("Thursday")) {
                t.getCourse();
                t.getGroup();
                thursday.add(t);
            } else if (t.getDay().equalsIgnoreCase("Friday")) {
                t.getCourse();
                t.getGroup();
                friday.add(t);
            } else if (t.getDay().equalsIgnoreCase("Saturday")) {
                t.getCourse();
                t.getGroup();
                saturday.add(t);
            } else if (t.getDay().equalsIgnoreCase("Sunday")) {
                t.getCourse();
                t.getGroup();
                sunday.add(t);
            }
        }
        request.setAttribute("monday", monday);
        request.setAttribute("tuesday", tuesday);
        request.setAttribute("wednesday", wednesday);
        request.setAttribute("thursday", thursday);
        request.setAttribute("friday", friday);
        request.setAttribute("saturday", saturday);
        request.setAttribute("sunday", sunday);
        request.setAttribute("slots", slots);
        request.setAttribute("lecs", session.getAttribute("lecs"));
        request.getRequestDispatcher("timetable.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
