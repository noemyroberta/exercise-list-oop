enum ShapeColor {
  BLACK, BLUE, RED;

}

abstract class Shape {
  ShapeColor? color;
  double area();

  Shape(this.color);

  @override
  String toString() {
    return '$color';
  }
}