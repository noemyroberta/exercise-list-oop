import 'dart:math' show sqrt, pow;

class Rectangle {
  final double? width;
  final double? height;

  Rectangle({this.width, this.height});

  get area => width! * height!;

  get perimeter => (width! + height!) * 2;

  get diagonal => sqrt(pow(width!, 2) + pow(height!, 2));
}
