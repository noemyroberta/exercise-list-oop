import 'package:answers_list_poo/exercise_3/employee.dart';

void main() {
  Employee emp = Employee(
    name: 'Joao Silva',
    grossSalary: 6000.00,
    tax: 1000.00,
  );

  print('Before -> $emp');

  double percentToIncreaseSalary = 10.0;
  emp.increaseSalary(percentToIncreaseSalary);

  print('After -> $emp');
}
