import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';

void main() {

  print('**Shape #1 data:**');
  ShapeColor rectColor = ShapeColor.BLACK;
  Rectangle rect = Rectangle(width: 4.0, height: 5.0, shapeColor: rectColor);
  print(rect);

  print('\n**Shape #2 data:**');
  ShapeColor circleColor = ShapeColor.RED;
  Circle circle = Circle(radius: 3.0, shapeColor: circleColor);
  print(circle);

  print('\nSHAPE AREAS:');
  print(rect.area());
  print(circle.area());
}
