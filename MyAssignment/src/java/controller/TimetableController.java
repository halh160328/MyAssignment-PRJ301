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
import java.util.List;

import model.Lectuter;
import model.Slot;
import model.Timetable;

public class TimetableController extends HttpServlet {

    private static final String MONDAY = "Monday";
    private static final String TUESDAY = "Tuesday";
    private static final String WEDNESDAY = "Wednesday";
    private static final String THURSDAY = "Thursday";
    private static final String FRIDAY = "Friday";
    private static final String SATURDAY = "Saturday";
    private static final String SUNDAY = "Sunday";

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
        divideTimeTable(time_table, monday, tuesday, wednesday, thursday, friday, saturday, sunday);
        request.setAttribute(MONDAY, monday);
        request.setAttribute(TUESDAY, tuesday);
        request.setAttribute(WEDNESDAY, wednesday);
        request.setAttribute(THURSDAY, thursday);
        request.setAttribute(FRIDAY, friday);
        request.setAttribute(SATURDAY, saturday);
        request.setAttribute(SUNDAY, sunday);
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

    private void divideTimeTable(List<Timetable> lstTimeTable,
            List<Timetable> lstTimeTableMonday,
            List<Timetable> lstTimeTableTuesday,
            List<Timetable> lstTimeTableWednesday,
            List<Timetable> lstTimeTableThursday,
            List<Timetable> lstTimeTableFriday,
            List<Timetable> lstTimeTableSaturday,
            List<Timetable> lstTimeTableSunday) {
        for (Timetable t : lstTimeTable) {
            switch (t.getDay()) {
                case MONDAY:
                    lstTimeTableMonday.add(t);
                    break;
                case TUESDAY:
                    lstTimeTableTuesday.add(t);
                    break;
                case WEDNESDAY:
                    lstTimeTableWednesday.add(t);
                    break;
                case THURSDAY:
                    lstTimeTableThursday.add(t);
                    break;
                case FRIDAY:
                    lstTimeTableFriday.add(t);
                    break;
                case SATURDAY:
                    lstTimeTableSaturday.add(t);
                    break;
                case SUNDAY:
                    lstTimeTableSunday.add(t);
                    break;
                default:
                    System.out.println("Some error when divide time table");
            }
        }
    }
}
