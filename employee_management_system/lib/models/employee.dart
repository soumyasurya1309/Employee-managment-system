class Employee {
  final String id;
  final String name;
  final String position;
  final String department;
  final String email;
  final String phone;

  Employee({
    required this.id,
    required this.name,
    required this.position,
    required this.department,
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'position': position,
      'department': department,
      'email': email,
      'phone': phone,
    };
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      id: map['id'],
      name: map['name'],
      position: map['position'],
      department: map['department'],
      email: map['email'],
      phone: map['phone'],
    );
  }
}
