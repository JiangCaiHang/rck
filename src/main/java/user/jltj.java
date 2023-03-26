package user;

import jdk.nashorn.internal.ir.RuntimeNode;


import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class jltj{
   List<jgjlpublic> grjls =new ArrayList<>();//集合
          List<Map>list=new ArrayList<Map>();
    public void grdr(){//,String pwds select * from user where name =姜才杭 pwd=1234

        Connection conn=userdr.getConn();
//        String sql="select * from grjl";
        idty idt=new idty();
        String sql="select *from grjl";
       //String sql = "select name,gender,byxx,zy,xqah,ryzs,tc,zwpj,id,age,dh,em from grjl where name=(select name from user where id='"+28+"')";//idt.id
        try {
            Statement st = conn.createStatement();//预编译
            //结果集
            ResultSet rs = st.executeQuery(sql);

                 jgjlpublic grjl=null;
                grjl=new jgjlpublic();
                while (rs.next()) {
                    String name = rs.getString("name");

                    String gender = rs.getString("gender");

                    String byxx = rs.getString("byxx");

                    String zy = rs.getString("zy");

                    String xqah = rs.getString("xqah");

                    String ryzs = rs.getString("ryzs");

                    String tc = rs.getString("tc");

                    String zwpj = rs.getString("zwpj");

                    int id = rs.getInt("id");

                    int age = rs.getInt("age");

                    int dh = rs.getInt("dh");

                    String em = rs.getString("em");
                    //封装对象
                    grjl.setName(name);
                    grjl.setGender(gender);
                    grjl.setByxx(byxx);
                    grjl.setZy(zy);
                    grjl.setXqah(xqah);
                    grjl.setRyzs(ryzs);
                    grjl.setTc(tc);
                    grjl.setZwpj(zwpj);
                    grjl.setId(id);
                    grjl.setAge(age);
                    grjl.setDh(dh);
                    grjl.setEm(em);

                    Map map=new HashMap();
                    map.put("name",name);
                     map.put("gender",gender);
                    map.put("byxx",byxx);
                     map.put("zy",zy);
                     map.put("xqah",xqah);
                     map.put("ryzs",ryzs);
                     map.put("tc",tc);
                     map.put("zwpj",zwpj);
                     map.put("id",id);
                     map.put("age",age);
                     map.put("dh",dh);
                     map.put("em",em);
                     grjls.add(grjl);//弃用的集合
                    //--------------------------------
                     list.add(map);
                        System.out.println(grjls);
                        for (Map map_1:list){

                        }
                }
//            request.setAttribute("grls",grjl);//将list集合数据放入到request中共享
//            request.getRequestDispatcher("qydrcg.jsp").forward(request,response);
             //System.out.print(grjls+"/n");
        }catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
       jltj jl=new jltj();
  jl.grdr();


   }

}
