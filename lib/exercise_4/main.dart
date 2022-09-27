import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';

void main() {
  List<Shape> shapes = <Shape>[];

  print('**Shape #1 data:**');
  ShapeColor rectColor = ShapeColor.BLACK;
  Rectangle rect = Rectangle(width: 4.0, height: 5.0, shapeColor: rectColor);
  print(rect);


  print('\n**Shape #2 data:**');
  ShapeColor circleColor = ShapeColor.RED;
  Circle circle = Circle(radius: 3.0, shapeColor: circleColor);
  print(circle);

  shapes.add(rect);
  shapes.add(circle);

  print('\nSHAPE AREAS:');
  for(Shape shape in shapes) print(shape.area());
}
