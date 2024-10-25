package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Facebook;
import model.Gmail;

public class GmailDAO implements DAO<Gmail>{
	public static GmailDAO getInstance() {
		return new GmailDAO();
	}

	@Override
	public int insert(Gmail t) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "INSERT INTO gmail (user,password) VALUE (?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, t.getUser());
			preparedStatement.setString(2, t.getPassword());
			result = preparedStatement.executeUpdate();
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int update(Gmail t) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "UPDATE gmail SET `password`=? WHERE  `user`=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, t.getPassword());
			preparedStatement.setString(2, t.getUser());
			result = preparedStatement.executeUpdate();
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int delete(Gmail t) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "DELETE from gmail WHERE `user=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, t.getUser());
			result = preparedStatement.executeUpdate();
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public ArrayList<Gmail> selectAll() {
		// TODO Auto-generated method stub
		ArrayList<Gmail> gmails = new ArrayList();
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "SELECT * from gmail";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				String user = resultSet.getString("user");
				String password = resultSet.getString("password");
				Gmail gmail = new Gmail(user, password);
				gmails.add(gmail);
			}
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return gmails;
	}

	@Override
	public Gmail selectByUser(Gmail t) {
		// TODO Auto-generated method stub
		Gmail gmail = null;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "SELECT * from gmail WHERE `user`=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, t.getUser());
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				String user = resultSet.getString("user");
				String password = resultSet.getString("password");
				gmail = new Gmail(user, password);
			}
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return gmail;
	}
}
