package ch05.dao;

import java.util.List;

import ch05.config.Configuration;
import ch05.dao.map.EmployeeMap;
import ch05.domain.Employee;

public class EmployeeDaoImpl implements EmployeeDao{
	private EmployeeMap employeeMap;
	
	public EmployeeDaoImpl() {
		this.employeeMap = Configuration.getMapper(EmployeeMap.class);
	}
	
	@Override
	public Employee selectEmployee(int employeeId){
		return employeeMap.selectEmployee(employeeId);
	}
	
	@Override
	public List<Employee> selectEmployees(){
		return employeeMap.selectEmployees();
	}
}
