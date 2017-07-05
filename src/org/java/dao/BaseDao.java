package org.java.dao;
import java.sql.*;
public class BaseDao {

	protected Connection con;
	protected CallableStatement cst;
	protected PreparedStatement pst;
	protected ResultSet rs;
	
	public Connection getConn(){
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url,"pei","pei");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public void close(){
		try {
			if(rs!=null)rs.close();
			if(pst!=null)rs.close();
			if(cst!=null)cst.close();
			if(con!=null)con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
