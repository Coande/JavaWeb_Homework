package com.e12e.utils;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import org.junit.Test;


public class DBHelper {
	
	@Test
	public void testGetConnection() throws ClassNotFoundException, FileNotFoundException, IOException, SQLException{
		getConnection();
	}
	
	private static Connection conn;
	public synchronized static Connection getConnection() throws ClassNotFoundException, FileNotFoundException, IOException, SQLException{
		if(conn==null){
			//获取配置
			Properties properties=new Properties();
			properties.load(new FileInputStream("db.properties"));
			String url=properties.getProperty("url");
			String user=properties.getProperty("username");
			String password=properties.getProperty("password");
			System.out.println("DB connect success! username="+user+" password="+password);
			
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, user, password);
		}
		return conn;
	}
	
	public synchronized static void closeConnection() throws SQLException{
		if(conn!=null){
			conn.close();
		}
	}
}
