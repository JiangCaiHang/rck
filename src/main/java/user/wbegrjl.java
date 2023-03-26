package user;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class wbegrjl {


    public void grjl(String name,String gender,String byxx,String zy,String xqah,String ryzs,
                     String tc,String zwpj,int id,int age,int dh,String em){
        String sql = "insert into grjl values('" + name+ "','" + gender + "','"+byxx+"','"+zy+"','"+xqah+"','"+ryzs+"','"+tc+"','"+zwpj+"','"+id+"',+'"+age+"','"+dh+"','"+em+"')";

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

//    public static void main(String[] args) {
//        idty dit=new idty();
//        wbegrjl wb=new wbegrjl();
//        wb.grjl("才杭","男","xx","软件","打篮球","6","打篮球","666",dit.id,18,13646,"1654ada");
//    }
}
