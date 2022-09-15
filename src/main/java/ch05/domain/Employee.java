package ch05.domain;

import java.time.LocalDate;

public class Employee {
	private int employeeId;
	private String lastName;
	private LocalDate hireDate;
		
	public int getEmployeeId() {
		return employeeId;
	}
	
	public String getLastName() {
		return lastName;
	}

	public LocalDate getHireDate() {
		return hireDate;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setHireDate(LocalDate hireDate) {
		this.hireDate = hireDate;
	}

	@Override
	public String toString() {
		return String.format("%3d %-11s %8s", employeeId, lastName, hireDate);
	}
}
