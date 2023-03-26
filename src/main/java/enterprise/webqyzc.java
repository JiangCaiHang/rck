package enterprise;

import user.userdr;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class webqyzc {
    public    boolean zhuc;
    public boolean qyyhzc(String name,String pwd ){
        String sql = "insert into ent values(" + null + ",'" + name+ "','" + pwd+ "')";
        Connection conn= userdr.getConn();
        try {
            Statement st=conn.createStatement();//将sql发送到数据库（准备发送）
            int row = st.executeUpdate(sql);//执行sql语句，返回一个整形的数组，表示受影响的行数
            if(row>0){
                zhuc=true;
                System.out.println("增加成功");
            }
            else {
                zhuc=false;
                System.out.println("增加失败");
            }
            st.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return zhuc;
    }
//        public static void main(String[] args) {
//        webqyzc wezc=new webqyzc();
//        wezc.qyyhzc("张麻子6","12345");
//        System.out.println(wezc.zhuc);
//    }
}
