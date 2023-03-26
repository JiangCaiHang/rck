package user;

import java.sql.*;

public class dr {
public   boolean sfcg;
    public void grdr(String name,String pwd){
        Connection conn=userdr.getConn();
        String sql = "select * from user where name =? and pwd=?";
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,pwd);
            ResultSet rs=ps.executeQuery();
    if (rs.next()){
        sfcg=true;
           }else {
        sfcg=false;
    }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    public void qydr(String name,String pwd){
        Connection conn=userdr.getConn();
        String sql = "select * from ent where name =? and pwd=?";
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,pwd);
            ResultSet rs=ps.executeQuery();
            if (rs.next()){
                sfcg=true;
            }else {
                sfcg=false;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

//    public static void main(String[] args) {
//        dr d=new dr();
//        d.grdr("j","1234");
//        System.out.println( d.sfcg);
//    }
}


