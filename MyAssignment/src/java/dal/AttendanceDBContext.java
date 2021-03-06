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
import model.Attendance;
import model.Course;
import model.Group;
import model.Student;

public class AttendanceDBContext extends DBContext {

    public ArrayList<Attendance> listStudent(String cid, int gid) {
        ArrayList<Attendance> list = new ArrayList<>();
        try {
            String sql = "select s.StudentID,s.StudentName,s.Gender,s.Dob,cg.CourseID,cg.GroupID from TimeTable tt join CourseGroup cg  \n"
                    + "on tt.CourseGroupID = cg.ID join StudentGroup sg \n"
                    + "on cg.GroupID = sg.GroupID\n"
                    + "join Student s on sg.StudentID = s.StudentID where cg.CourseID = ? and cg.GroupID = ?\n"
                    + "group by s.StudentID, s.StudentName,s.Gender,s.Dob,cg.CourseID,cg.GroupID";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, cid);
            stm.setInt(2, gid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attendance att = new Attendance();
                Student stu = new Student();
                stu.setId(rs.getString("StudentID"));
                stu.setName(rs.getString("StudentName"));
                stu.setDob(rs.getDate("Dob"));
                stu.setGender(rs.getBoolean("Gender"));
                Group g = new Group();
                g.setGroupID(rs.getInt("GroupID"));
                Course c = new Course();
                c.setCourseID(rs.getString("CourseID"));
                att.setStudent(stu);
                att.setCourse(c);
                att.setGroup(g);
                list.add(att);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<Group> groupList(int id) {
        ArrayList<Group> list = new ArrayList<>();
        try {
            String sql = "select * from [Group] where GroupID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Group g = new Group();
                g.setGroupName(rs.getString("GroupName"));
                list.add(g);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void insert(Attendance att) {
        try {
            String sql = "INSERT INTO [Attendance]\n"
                    + "           ([studentID]\n"
                    + "           ,[groupID]\n"
                    + "           ,[courseID]\n"
                    + "           ,[attendance]\n"
                    + "           ,[note])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, att.getStudent().getId());
            stm.setInt(2, att.getGroup().getGroupID());
            stm.setString(3, att.getCourse().getCourseID());
            stm.setBoolean(4, att.isAttendance());
            stm.setString(5, att.getNote());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
