package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class dungchung {
	public Connection cn;
	public void KetNoi() throws Exception{		
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.print("Verify SQL");
		String url = "jdbc:sqlserver://ADMIN\\SQLEXPRESS:1433;databaseName=QlSach;user=sa; password=123";
		cn = DriverManager.getConnection(url)	;
		System.out.print("Connected");
		}
}
