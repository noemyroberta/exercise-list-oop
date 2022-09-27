import '../validators/cnpj_validator.dart';
import 'person.dart';

class PersonLegal extends Person {
  final String cnpj;

  PersonLegal(this.cnpj);

  @override
  bool isValid() => CNPJValidator.isValid(cnpj);


  @override
  String toString() {
    return '{Legal}, CNPJ: $cnpj';
  }
}
