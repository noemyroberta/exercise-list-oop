import 'shape.dart';

class Rectangle extends Shape {
  final double? width;
  final double? height;
  final ShapeColor? shapeColor;

  Rectangle({this.width, this.height, this.shapeColor}) : super(shapeColor);

  @override
  double area() => width! * height!;

  @override
  String toString() {
    return 'Rectangle | $width, $height, $shapeColor';
  }
}
