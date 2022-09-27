import 'dart:math' show pow;
import 'shape.dart';

class Circle extends Shape {
  final double? radius;
  final ShapeColor? shapeColor;

  Circle({this.radius, this.shapeColor}) : super(shapeColor);

  @override
  double area() => ((3.14) * pow(radius!, 2));

  @override
  String toString() {
    return 'Circle | $radius, $shapeColor';
  }
}
