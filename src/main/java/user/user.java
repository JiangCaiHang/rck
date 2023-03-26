package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class user {


    public static void main(String[] args) {
        //连接数据库必须的4个属性，用户名，密码，驱动，连接字符串
//        final String USERNAME = "root";
//        final String PWD = "1234";
        final String DRIVER = "com.mysql.jdbc.Driver";  //驱动
//        final String URL = "jdbc:mysql://localhost:3306/zpxt";  //连接字符串


//            try {
//                Class.forName(DRIVER);
//            } catch (ClassNotFoundException e) {
//                e.printStackTrace();
//                ---------------
//            }try {
//            Connection conn= DriverManager.getConnection(URL,USERNAME,PWD);
//            System.out.println(conn);
//            conn.close();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//                ------------------
        Connection connection=userdr.getConn();
        System.out.println(connection);
     }
//    }



    }
