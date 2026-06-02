import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class AddEmployeeScreen extends StatefulWidget {
  const AddEmployeeScreen({super.key});

  @override
  State<AddEmployeeScreen> createState() =>
      _AddEmployeeScreenState();
}

class _AddEmployeeScreenState
    extends State<AddEmployeeScreen> {

  final TextEditingController nameController =
      TextEditingController();

  final TextEditingController positionController =
      TextEditingController();

  final TextEditingController departmentController =
      TextEditingController();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController phoneController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Employee'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CustomTextField(
              hintText: 'Employee Name',
            ),
            const SizedBox(height: 18),
            const CustomTextField(
              hintText: 'Position',
            ),
            const SizedBox(height: 18),
            const CustomTextField(
              hintText: 'Department',
            ),
            const SizedBox(height: 18),
            const CustomTextField(
              hintText: 'Email',
            ),
            const SizedBox(height: 18),
            const CustomTextField(
              hintText: 'Phone Number',
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: 'Add Employee',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}