package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//删除所有信息
public class deleteby {
    public boolean bool;
    public void delete(int id){
        Connection conn=userdr.getConn();
        String sql="delete from grjl where id=?";
        try {
            PreparedStatement ps=conn.prepareStatement(sql);//获取ps对象
            ps.setInt(1,id);//设置参数

            int count=ps.executeUpdate();//执行sql
            ps.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        delete_pwd_id_name(id);
    }


    //__________
    public void delete_pwd_id_name(int id){//删除账号表
        Connection conn=userdr.getConn();
        String sql="delete from user where id=?";
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setInt(1,id);

            int count=ps.executeUpdate();
            if (count>0){
                bool=true;
            }else {
                bool=false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
//        deleteby del=new deleteby();
//        del.delete_pwd_id_name(31);
//        System.out.println(del.bool);
    }
}
