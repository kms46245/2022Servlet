package ch05.dao;

import java.util.List;

import ch05.domain.Employee;

public interface EmployeeDao {
	Employee selectEmployee(int employeeId);
	List<Employee> selectEmployees();
}
