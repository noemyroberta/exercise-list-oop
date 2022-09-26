import 'package:answers_list_poo/exercise_8/grade_entity.dart';
import 'package:answers_list_poo/exercise_8/student_entity.dart';
import 'package:answers_list_poo/exercise_8/student_validate_implementation.dart';

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
