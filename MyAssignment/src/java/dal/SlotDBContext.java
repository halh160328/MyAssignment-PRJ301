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
import model.Slot;

/**
 *
 * @author Admin
 */
public class SlotDBContext extends DBContext {

    public ArrayList<Slot> slotList() {
        ArrayList<Slot> list = new ArrayList<>();
        try {
            String sql = "select * from Slot";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Slot slot = new Slot();
                slot.setSlotID(rs.getString("SlotID"));
                slot.setStart(rs.getTime("TimeStart"));
                slot.setEnd(rs.getTime("TimeEnd"));
                list.add(slot);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SlotDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
