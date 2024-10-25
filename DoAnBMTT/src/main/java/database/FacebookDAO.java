package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Facebook;

public class FacebookDAO implements DAO<Facebook>{
	public static FacebookDAO getInstance() {
		return new FacebookDAO();
	}

	@Override
	public int insert(Facebook t) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "INSERT INTO facebook (user,password) VALUE (?,?)";
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
	public int update(Facebook t) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "UPDATE facebook SET `password`=? WHERE  `user`=?";
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
	public int delete(Facebook t) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "DELETE from facebook WHERE `user=?";
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
	public ArrayList<Facebook> selectAll() {
		// TODO Auto-generated method stub
		ArrayList<Facebook> facebooks = new ArrayList();
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "SELECT * from facebook";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				String user = resultSet.getString("user");
				String password = resultSet.getString("password");
				Facebook facebook = new Facebook(user, password);
				facebooks.add(facebook);
			}
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return facebooks;
	}

	@Override
	public Facebook selectByUser(Facebook t) {
		// TODO Auto-generated method stub
		Facebook facebook = null;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "SELECT * from facebook WHERE `user`=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, t.getUser());
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				String user = resultSet.getString("user");
				String password = resultSet.getString("password");
				facebook = new Facebook(user, password);
			}
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return facebook;
	}

}
