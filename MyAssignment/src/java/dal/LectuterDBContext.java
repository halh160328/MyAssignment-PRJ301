/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Lectuter;

/**
 *
 * @author Admin
 */
public class LectuterDBContext extends DBContext {

    public Lectuter checkInfo(String email, String pass) {
        try {
            String sql = "select * from Lectuter where Email = ? and Password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Lectuter l = new Lectuter();
                l.setEmail(rs.getString("Email"));
                l.setPassword(rs.getString("Password"));
                l.setUserName(rs.getString("UserName"));
                l.setName(rs.getString("LectuterName"));
                return l;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LectuterDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
