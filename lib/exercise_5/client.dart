class Client {
  final String? name;
  final String? email;
  final DateTime? birthDate;

  Client({
    required this.name,
    required this.email,
    required this.birthDate,
  });

  @override
  String toString() {
    return '$name, \nEmail: $email, \nBirthDate: $birthDate';
  }
}
