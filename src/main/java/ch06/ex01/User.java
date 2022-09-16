package ch06.ex01;

import java.time.LocalDate;

public class User {
	private int userId;
	private String userName;
	private LocalDate regDate;
	
	public User(int userId, String userName, LocalDate regDate) {
		this.userId = userId;
		this.userName = userName;
		this.regDate = regDate;
	}

	public int getUserId() {
		return userId;
	}

	public String getUserName() {
		return userName;
	}

	public LocalDate getRegDate() {
		return regDate;
	}
	
	@Override
	public String toString() {
		return userId + ", " + userName + ", " + regDate; 
	}
}
