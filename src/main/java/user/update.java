package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 update grjl
 name =?,
 gender =?,
 byxx =?,
 zy =?,
 xqah =?,
 ryzs =?,
 tc =?,
 zwpj =?,
 age =?,
 dh =?,
 em =?
 where id =?
 */
public class update {
    //修改用户信息
    public boolean bool;
    public void Updatgrjl(int Id,String Name,String Gender,String Byxx,String Zy,String Xqah,String Ryzs,String Tc,String Zwpj,int Age,int Dh,String Em){
        Connection conn=userdr.getConn();
        String sql=" update grjl set name =? ,gender=? ,byxx =?,zy =?,xqah =?, ryzs =?,tc =?, zwpj =?,age =?,dh =?,em =?where id =?";


        try {
            PreparedStatement ps=conn.prepareStatement(sql);

            ps.setString(1,Name);
            ps.setString(2,Gender);
            ps.setString(3,Byxx);
            ps.setString(4,Zy);
            ps.setString(5,Xqah);
            ps.setString(6,Ryzs);
            ps.setString(7,Tc);
            ps.setString(8,Zwpj);
//            Integer age=Integer.valueOf(Age);
//            Integer  dh=Integer.valueOf(Dh);
//            Integer id=Integer.valueOf(Id);
            ps.setInt(9,Age);
            ps.setInt(10,Dh);
            ps.setString(11,Em);
            ps.setInt(12,Id);

            //执行sql;
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
        int a= Integer.valueOf("666");
        Integer c=a;
        System.out.println(a);
        update up=new update();
        up.Updatgrjl(22,"姜才杭1号","男","xxx","阿萨",
                "阿达","阿达","阿大","啊大都是从",199,
                123164646,"131466@aad");
    }
}
