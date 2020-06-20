package org.lanqiao.dao;
import java.sql.*;

public class LoginDao {

	public int login(String name,String pwd) {
	
		String URL="jdbc:mysql://localhost:3306/test";
		String USERNAME="root";
		String PWD="123456";
		Connection connection=null;
		Statement stmt=null;
		ResultSet rs=null;
			try {
			//a.导入驱动，加载具体的驱动类
			Class.forName("com.mysql.jdbc.Driver");//加载驱动类
			//b.与数据库建立连接
			connection = DriverManager.getConnection(URL,USERNAME,PWD);
			//c.发送sql，执行（增删改、查）
			stmt = connection.createStatement();
			
			String sql="select count(*) from user where uname='"+name+"'and pwd='"+pwd+"'";
			//String sql="update student set stuname='ls' where stuno=1";
			//String sql="delete from student where stuno=1";
			rs=stmt.executeQuery(sql);
			int count=0;
			if(rs.next()) {
				
				count =rs.getInt(1);
			}
//			if(count>0){
//				//重定向
//				//response.sendRedirect("success.jsp");
//				//请求转发
//				request.getRequestDispatcher("success.jsp").forward(request, response);
//			}else
//			{
//				response.sendRedirect("failure.jsp");
//			}
//			System.out.println(count);
			return count;
			}
			catch(ClassNotFoundException e) {
				e.printStackTrace();
				return -1;
			}
			catch(SQLException e) {
				e.printStackTrace();
				return -1;
			}
			catch(Exception e) {
				e.printStackTrace();
				return -1;
			}finally {
				try {
				if(stmt!=null) stmt.close();
				if(connection!=null) connection.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
	}
}
