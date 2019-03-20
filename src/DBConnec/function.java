package DBConnec;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Bean.login;
import Bean.produce;

public class function {
	Connection con;

	public void openConnection(String userName, String passWord, String nameDataBase) {
		try {

			String url = "jdbc:sqlserver://localhost:1433;databaseName=" + nameDataBase;
			String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
			// Mở kết nối
			Class.forName(driver);
			// kiểm tra thông tin kết nối
			con = DriverManager.getConnection(url, userName, passWord);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<produce> showProduce(String sql) {
		ArrayList<produce> list = new ArrayList<>();

		try {

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				list.add(new produce(rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5)));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}






	public boolean deleteProduce(String code) {
		String sql = "DELETE PRODUCE WHERE CODE = ?";
		try {
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setString(1, code);
			pr.execute();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean updateProduce( String title, String price, String image , String code) {
		String sql = "UPDATE PRODUCE SET TITLE = ? , PRICE =? , IMAGES = ?  WHERE CODE = ? ";
		try {
			PreparedStatement pr = con.prepareStatement(sql);
			pr.setString(1, title);
			pr.setString(2, price);
			pr.setString(3, image);
			pr.setString(4, code);
			pr.executeUpdate();
			return true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}
}
