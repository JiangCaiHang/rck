package user;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class usertj {
    public static void main(String[] args) {

        System.out.println();
        String sql="insert into user values(null,'王五','1234' )";
//        String sql="update text set id ('张1',3)";
    Connection conn=userdr.getConn();
        try {
             Statement st=conn.createStatement();//将sql发送到数据库（准备发送）
            int row = st.executeUpdate(sql);//执行sql语句，返回一个整形的数组，表示受影响的行数
            if(row>0){
                System.out.println("增加成功");
            }
            else {
                System.out.println("增加失败");
            }
            st.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}