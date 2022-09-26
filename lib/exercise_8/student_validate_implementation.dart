import 'grade_entity.dart';
import 'student_validate_interface.dart';
import 'student_entity.dart';

class StudentValidateImplementation implements IStudentValidate {
  StudentEntity student;

  StudentValidateImplementation(this.student);

  @override
  validateStudent() {
    final fullName = student.fullName;
    final code = student.code;
    final grades = student.grades;

    StudentEntity validStudent = StudentEntity();

    if (_gradesValidate(grades) &&
        _codeValidate(code) &&
        _fullNameValidate(fullName)) validStudent = student;

    print(validStudent.toString());
  }

  bool _gradesValidate(List<GradeEntity?>? grades) {
    bool hasFive;

    return hasFive = grades?.length == 5;
  }

  bool _fullNameValidate(String? fullName) {
    bool valid = false;

    final lenFullNameValid = fullName!.length <= 50;
    final fullNameValid = fullName.split(' ').length >= 2;

    if (lenFullNameValid && fullNameValid) valid = true;

    return valid;
  }

  bool _codeValidate(String? code) {
    bool codeIsValid = false;

    final hasEigthCharacters = code?.length == 8;
    final startsWith201 = code!.startsWith('201');

    if (hasEigthCharacters && startsWith201) codeIsValid = true;

    return codeIsValid;
  }
}
