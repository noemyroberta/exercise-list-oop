import '../entity_validation_interface.dart';

abstract class Person implements IEntityValidation{

  @override
  String toString() {
    return 'Type:${super.toString()}';
  }
}