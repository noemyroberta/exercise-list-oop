import '../validators/cpf_validator.dart';
import 'person.dart';

class PersonIndividual extends Person {
  final String cpf;

  PersonIndividual(this.cpf);

  @override
  bool isValid() => CPFValidator.isValid(cpf);

  @override
  String toString() {
    return '{Individual}, CPF: $cpf';
  }
}
