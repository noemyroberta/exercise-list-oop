import 'grade_entity.dart';

class StudentEntity {
  final String? fullName;
  final String? code;
  final List<GradeEntity?>? grades;

  StudentEntity({
    this.fullName,
    this.code,
    this.grades,
  });

  @override
  String toString() {
    return 'Fullname: $fullName | Code: $code | Grades: ${grades.toString()}';
  }
}
