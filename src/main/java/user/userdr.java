package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class userdr {
    static final String USERNAME = "root";
    static final String PWD = "1234";
    static final String DRIVER = "com.mysql.jdbc.Driver";  //驱动
    static final String URL = "jdbc:mysql://localhost:3306/zpxt?useSSL=false";
    static {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public static Connection getConn(){
  //连接字符串
    Connection conn=null;
    try {
        conn= DriverManager.getConnection(URL,USERNAME,PWD);
//        conn.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return conn;
}
}
