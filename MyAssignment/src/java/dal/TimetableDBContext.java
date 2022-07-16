/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Course;
import model.Group;
import model.Slot;
import model.Timetable;

/**
 *
 * @author Admin
 */
public class TimetableDBContext extends DBContext {

    public ArrayList<model.Timetable> listByLecID(int id) {
        ArrayList<Timetable> list = new ArrayList<>();
        try {
            String sql = "select tt.Day, tt.SlotID,cg.CourseID, g.GroupName,g.GroupID from Timetable tt join CourseGroup cg \n"
                    + "on tt.CourseGroupID = cg.ID join [Group] g on cg.GroupID = g.GroupID where cg.LectuterID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Timetable tt = new Timetable();
                Course c = new Course();
                c.setCourseID(rs.getString("CourseID"));
                Group g = new Group();
                g.setGroupName(rs.getString("GroupName"));
                g.setGroupID(rs.getInt("GroupID"));
                Slot s = new Slot();
                s.setSlotID(rs.getString("SlotID"));
                tt.setDay(rs.getString("Day"));
                tt.setCourse(c);
                tt.setGroup(g);
                tt.setSlot(s);
                list.add(tt);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TimetableDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
