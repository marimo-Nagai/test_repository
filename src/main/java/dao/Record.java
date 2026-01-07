package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Record {


	public static void main(String[] args) {
		final String URL = "jdbc:postgresql://localhost:5432/postgres";
		final String USER = "postgres";
		final String PASS = "41kaisha27R";
		try {
			Class.forName("org.postgresql.Driver");
			Connection conn = DriverManager.getConnection(URL, USER,
					PASS);
			PreparedStatement ps = conn.prepareStatement("select * from ms_staff");
			ResultSet rs = ps.executeQuery();
			// 一行ずつ処理
			while (rs.next()) {
			    String name = rs.getString("staff_name");
			    System.out.println(name);
			    // データ処理
			}
			
			conn.close();
			System.out.println("OK");
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("NG");
		}
	}
}
