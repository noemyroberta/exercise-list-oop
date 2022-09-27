import 'validators/validator.dart';

import 'person/person.dart';
import 'person/person_individual.dart';
import 'person/person_legal.dart';

void main() {
  Person individual = PersonIndividual("023.434.543-44");
  Person company = PersonLegal("50.432.345/0001-43");

  Validator.runValidation(individual);
  Validator.runValidation(company);
}