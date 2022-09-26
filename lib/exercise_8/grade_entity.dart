class GradeEntity {
  final int? grade;
  final String? subject;

  GradeEntity({this.grade, this.subject});

  @override
  String toString() {

    return '\nGrade: $grade | Subject: $subject';
  }
}
