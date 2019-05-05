package acovering.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JavaBean {
		/*
		 * javabean的作用:
		 * a.减轻jsp的复杂度
		 * b.提高代码复用
		 * 
		 * JavaBean(就是一个类)的定义:
		 * 满足两点:
		 * a.public 修饰的类....public  的 无参构造
		 * b.所有属性  都是private ,并且提供set/get  (如果是boolean 则get 可以替换成is)
		 * 
		 * 使用层面:
		 *分为两种:
		 *a.封装业务逻辑的javabean
		 *
		 *b.封装数据的javabean(实体类)
		 *		对应于数据库中的一张表
		 * 
		 * */
		private	 String URL;
		private 	String USERNAME;
		private	String PWD;
		private	Connection connection;
		public Connection getConnection() {
			return connection;
		}
		public  JavaBean()
		{
			try {
			Class.forName("oracle.jdbc.OracleDriver");
			}catch(ClassNotFoundException ex) {
				ex.printStackTrace();
				System.out.println("未找到驱动类");
			}
			URL="jdbc:oracle:thin:@localhost:1521:ORCL";
			USERNAME ="system";
			PWD="root";
			try {
				connection=DriverManager.getConnection(URL, USERNAME,PWD);
			}catch(SQLException ex) {
				ex.printStackTrace();
				System.out.println("Connection连接失败!");
			}
		}
		public  void closeConnection() {
			if(connection!=null) {
				try {
				connection.close();
				}catch(SQLException ex) {
					ex.printStackTrace();
					System.out.println("Connection关闭失败");
				}
			}
		}
		public List<ShuJu>  selectDemo(String USERNAME)
		{
			String sql="select * from Demouser where USERNAME=?";
			try {
			PreparedStatement preparedstatement=connection.prepareStatement(sql);
			preparedstatement.setString(1, USERNAME);
			ResultSet resultset=preparedstatement.executeQuery();
//			ShuJu shuju=new ShuJu();
//			
//			while(resultset.next()) {
//				shuju.setUSERNAME(resultset.getNString("USERNAME"));
//				shuju.setPASSWORD(resultset.getNString("PASSWORD"));
//				shuju.setID(resultset.getInt("ID"));
//			}
			List<ShuJu> list=new ArrayList<>();
			while(resultset.next()) {
				ShuJu shuju =new ShuJu();
				shuju.setUSERNAME(resultset.getNString("USERNAME"));
				shuju.setPASSWORD(resultset.getNString("PASSWORD"));
				shuju.setID(resultset.getInt("ID"));
				list.add(shuju);
			}
			
			if(resultset!=null) {
				resultset.close();
			}
			if(preparedstatement!=null) {
				preparedstatement.close();
			}
			return list;
			}catch(SQLException ex) {
				ex.printStackTrace();
				System.out.println("查询失败");
				return null;
			}
		}
		public boolean  isTrue(String USERNAME,String PASSWORD)
		{
			String sql="select * from Demouser where USERNAME=?";
			try {
			PreparedStatement preparedstatement=connection.prepareStatement(sql);
			preparedstatement.setString(1, USERNAME);
			ResultSet resultset=preparedstatement.executeQuery();
			List<ShuJu> list=new ArrayList<>();
			while(resultset.next()) {
				ShuJu shuju =new ShuJu();
				shuju.setUSERNAME(resultset.getNString("USERNAME"));
				shuju.setPASSWORD(resultset.getNString("PASSWORD"));
				shuju.setID(resultset.getInt("ID"));
				list.add(shuju);
			}
			if(resultset!=null) {
				resultset.close();
			}
			if(preparedstatement!=null) {
				preparedstatement.close();
			}
			if(list.size()==1) {
				if(list.get(0).getUSERNAME().equals(USERNAME)&&list.get(0).getPASSWORD().equals(PASSWORD)){
					return true;
				}else {
					return false;
				}
			}
				else {
					return false;
				}
			}catch(SQLException ex) {
				ex.printStackTrace();
				System.out.println("查询失败");
				return false;
			}
		}
		
		public static void main(String args[]) {
			JavaBean javabean=new JavaBean();
			List<ShuJu> list=javabean.selectDemo("2857561008");
			for(int i=0;i<list.size();i++) {
				System.out.println("ID:"+list.get(i).getID()+"      USERNAME:"+list.get(i).getUSERNAME()+"        PASSWORD:"+list.get(i).getPASSWORD());
			}
		
			javabean.closeConnection();
			
		}
		
}
