/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.LectuterDBContext;
import dal.SlotDBContext;
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
import org.apache.catalina.ha.session.DeltaSession;

public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Lectuter> lecs = new ArrayList<>();
        Lectuter lec = new Lectuter();
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        LectuterDBContext db = new LectuterDBContext();
        lec = db.checkInfo(email, pass);
        if (lec != null) {
            lecs.add(lec);
            session.setAttribute("lecs", lecs);
            session.setAttribute("lec", lec);
            response.sendRedirect(request.getContextPath() + "/timetable");
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
