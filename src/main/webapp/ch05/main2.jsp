<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch05.service.EmployeeService, ch05.service.EmployeeServiceImpl'%>
<%@ page import='ch05.domain.Employee, java.util.List' %>

<%
	EmployeeService employeeService = new EmployeeServiceImpl();
%>
사번 : <%= employeeService.getEmployee(100).getEmployeeId() %> <br>
이름 : <%= employeeService.getEmployee(100).getLastName() %>	<br>
입사일 : <%= employeeService.getEmployee(100).getHireDate() %> <br><br>


<%= employeeService.getEmployee(100) %> <br>

<% 
List<Employee> employees = employeeService.getEmployees();

for(Employee employee : employees) {
%>
	<%= employee %> <br>
<%
}
%>

<%-- 과제] 'hr'DB의 100번 사원의 사번 이름 입사일을 출력하라. --%>