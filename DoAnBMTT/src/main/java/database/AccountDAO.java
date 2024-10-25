package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Account;
import model.Gmail;

public class AccountDAO implements DAO<Account>{
	public static AccountDAO getInstance() {
		return new AccountDAO();
	}

	@Override
	public int insert(Account t) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "INSERT INTO ACCOUNT (`user`,`password`,`name`,gender,birthdate,address,phoneNum,email) VALUE (?,?,?,?,?,?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, t.getUser());
			preparedStatement.setString(2, t.getPassword());
			preparedStatement.setString(3, t.getName());
			preparedStatement.setString(4, t.getGender());
			preparedStatement.setDate(5, t.getBirthDate());
			preparedStatement.setString(6, t.getAddress());
			preparedStatement.setString(7, t.getPhoneNum());
			preparedStatement.setString(8, t.getEmail());
			result = preparedStatement.executeUpdate();
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int update(Account t) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "UPDATE account SET `password`=?,`name`=?,gender=?,birthdate=?,address=?,phoneNum=?,email=? WHERE `user`=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(8, t.getUser());
			preparedStatement.setString(1, t.getPassword());
			preparedStatement.setString(2, t.getName());
			preparedStatement.setString(3, t.getGender());
			preparedStatement.setDate(4, t.getBirthDate());
			preparedStatement.setString(5, t.getAddress());
			preparedStatement.setString(6, t.getPhoneNum());
			preparedStatement.setString(7, t.getEmail());
			result = preparedStatement.executeUpdate();
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int delete(Account t) {
		// TODO Auto-generated method stub
		int result = 0;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "DELETE from account WHERE `user`=?";
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
	public ArrayList<Account> selectAll() {
		// TODO Auto-generated method stub
		ArrayList<Account> accounts = new ArrayList();
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "SELECT * from account";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				String user = resultSet.getString("user");
				String password = resultSet.getString("password");
				String name = resultSet.getString("name");
				String gender = resultSet.getString("gender");
				Date birthdate = resultSet.getDate("birthdate");
				String address = resultSet.getString("address");
				String phoneNum = resultSet.getString("phoneNum");
				String email = resultSet.getString("email");
				Account account = new Account(user, password, name, gender, birthdate, address, phoneNum, email);
				accounts.add(account);
			}
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return accounts;
	}

	@Override
	public Account selectByUser(Account t) {
		// TODO Auto-generated method stub
		Account account = null;
		try {
			Connection connection = JDBCUtill.getConnection();
			String sql = "SELECT * from account WHERE `user`=?";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, t.getUser());
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				String user = resultSet.getString("user");
				String password = resultSet.getString("password");
				String name = resultSet.getString("name");
				String gender = resultSet.getString("gender");
				Date birthdate = resultSet.getDate("birthdate");
				String address = resultSet.getString("address");
				String phoneNum = resultSet.getString("phoneNum");
				String email = resultSet.getString("email");
				account = new Account(user, password, name, gender, birthdate, address, phoneNum, email);
			}
			connection.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return account;
	}
}
