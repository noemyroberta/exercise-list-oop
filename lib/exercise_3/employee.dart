class Employee {
  String? name;
  double? grossSalary;
  double? tax;

  Employee({
    required this.name,
    required this.grossSalary,
    required this.tax,
  });

  get netSalary => grossSalary! - tax!;


  void increaseSalary(double percent) {
    double plus = grossSalary! * (percent/100);
    grossSalary = grossSalary! + plus;
  }

  @override
  String toString() {
    return '$name, R\$$netSalary';
  }
}
