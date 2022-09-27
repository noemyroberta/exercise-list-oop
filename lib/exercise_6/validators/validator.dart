import '../entity_validation_interface.dart';

class Validator {
  IEntityValidation? entity;

  static void runValidation(IEntityValidation? entity) {
    print(entity?.isValid());
  }

  @override
  String toString() {
    return '$entity';
  }
}
