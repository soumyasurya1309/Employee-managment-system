import '../models/employee.dart';

class EmployeeService {

  final List<Employee> employees = [];

  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  List<Employee> getEmployees() {
    return employees;
  }

  void updateEmployee(
    String id,
    Employee updatedEmployee,
  ) {
    final index = employees.indexWhere(
      (employee) => employee.id == id,
    );

    if (index != -1) {
      employees[index] = updatedEmployee;
    }
  }

  void deleteEmployee(String id) {
    employees.removeWhere(
      (employee) => employee.id == id,
    );
  }

  Employee? getEmployeeById(String id) {
    try {
      return employees.firstWhere(
        (employee) => employee.id == id,
      );
    } catch (e) {
      return null;
    }
  }
}