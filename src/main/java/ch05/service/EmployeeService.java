package ch05.service;

import java.util.List;

import ch05.domain.Employee;

public interface EmployeeService {
	Employee getEmployee(int employeeId);
	List<Employee> getEmployees();
}
