package ch05.service;

import java.util.List;

import ch05.dao.EmployeeDao;
import ch05.dao.EmployeeDaoImpl;
import ch05.domain.Employee;

public class EmployeeServiceImpl implements EmployeeService{
	private EmployeeDao employeeDao;
	
	public EmployeeServiceImpl() {
		this.employeeDao = new EmployeeDaoImpl();
	}
	
	@Override
	public Employee getEmployee(int employeeId){
		return employeeDao.selectEmployee(employeeId);
	}
	
	@Override
	public List<Employee> getEmployees(){
		return employeeDao.selectEmployees();
	}
}
