/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ANAND
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author ANAND
 */
public class DBclass {
    static Connection conn=null;
    static PreparedStatement ps=null;
	static{
		createConnection();
	}
	private static void createConnection(){
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "medical";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root"; 
		String password = "";
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url+dbName,userName,password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static Connection getConnection(){
		if(conn!=null){
			return conn;
		}else{
			createConnection();
			return conn;
		}
	}

}
