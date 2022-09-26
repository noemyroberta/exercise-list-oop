import 'grade_entity.dart';
import 'student_entity.dart';
import 'student_validate_implementation.dart';

void main() {
  StudentEntity student = StudentEntity(
    fullName: 'Noemy Roberta',
    code: '20111111',
    grades: <GradeEntity> [
      GradeEntity(grade: 2, subject: 'POO'),
      GradeEntity(grade: 10, subject: 'POO'),
      GradeEntity(grade: 10, subject: 'POO'),
      GradeEntity(grade: 10, subject: 'POO'),
      GradeEntity(grade: 10, subject: 'POO'),
    ],
  );

  StudentValidateImplementation(student).validateStudent();
}
