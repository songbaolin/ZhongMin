package com.zm.system.test;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.DriverManager;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

public class ImageTest {
	  private static String url="jdbc:mysql://localhost:3306/zhongmin";
	  private static String user="root";
	  private static String password="root";
	  private static Connection con;
	  public static void main(String[] args) throws Exception {
		    Class.forName("com.mysql.jdbc.Driver");
		    con=(Connection) DriverManager.getConnection(url,user,password);
		    shangchuan();
		    xiazai();    
		  }
		  //添加图片到数据库test4的file表
		  public static void shangchuan() throws Exception{
		    String sql="insert into image(name,content) values(?,?)";
		    PreparedStatement ptmt=(PreparedStatement) con.prepareStatement(sql);
		    ptmt.setString(1, "汽车.jpg");
		    InputStream is=null;
		    is=new FileInputStream("E:\\anli1.jpg");
		    ptmt.setBinaryStream(2, is,is.available());
		    //方法说明：PreparedStatement.setBinaryStream(int parameterIndex, InputStream x, int length)
		    ptmt.execute();
		    System.out.println("图片添加成功！");
		 
		  }
		  //从数据库中把图片下载至桌面
		  public static void xiazai() throws Exception{
		    String sql="select content from image where id=1";//在我这里3.jpg是第三张图片
		    Statement stmt=(Statement) con.createStatement();
		    ResultSet rs=(ResultSet) stmt.executeQuery(sql);//将查询结果给rs
		    if(rs.next()){
		      InputStream is=rs.getBinaryStream("content");
		      //.getBinaryStream():a Java input stream that delivers the database column value as a stream of uninterpreted bytes
		      FileOutputStream fos=new FileOutputStream("E:\\image\\汽车.jpg");
		      byte[] buffer=new byte[1024];
		      int len=0;
		      while((len=is.read(buffer))!=-1){
		        fos.write(buffer,0,len);//将数据库的图片写出
		      }
		      System.out.println("下载成功！已下载至桌面，请查看");
		    }else{
		      System.out.println("图片不存在！");
		    }
		    con.close();
		  }
}
