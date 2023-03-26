package user;

import java.sql.*;
import java.util.List;

public class idty {
public static int id;
    public void grdr(String pwds){//,String pwds select * from user where name =姜才杭 pwd=1234
        Connection conn=userdr.getConn();
        String sql = "select name,id,pwd from user where name=(select name from user where pwd='"+pwds+"')";
        try {
            Statement st = conn.createStatement();
            //结果集
            ResultSet rs = st.executeQuery(sql);
            rs.next();
            int ids=rs.getInt("id");
            String name=rs.getString("name");
            String pwd=rs.getString("pwd");

             id=ids;
           System.out.println(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    public void qydr(String pwds){//,String pwds select * from user where name =姜才杭 pwd=1234
        Connection conn=userdr.getConn();
        String sql = "select name,id,pwd from ent where name=(select name from ent where pwd='"+pwds+"')";
        try {
            Statement st = conn.createStatement();
            //结果集
            ResultSet rs = st.executeQuery(sql);
            rs.next();
            int ids=rs.getInt("id");
            String name=rs.getString("name");
            String pwd=rs.getString("pwd");

            id=ids;
            System.out.println(id);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    public static void main(String[] args) {
        idty idt=new idty();
        idt.qydr("1230");
    }
}

