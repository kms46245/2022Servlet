package ch05.dao.map;

import java.util.List;

import ch05.domain.Employee;

public interface EmployeeMap {
	Employee selectEmployee(int employeeId);
	List<Employee> selectEmployees();
}
