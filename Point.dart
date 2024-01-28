import 'dart:math';
import 'dart:core';

class Point {
  final double x;
  final double y;
  final double z;

  const Point(this.x, this.y, this.z);

  factory Point.beginning(double x, double y, double z) {
    return Point(x, y, z);
  }
  factory Point.origin() => Point(0, 0, 0);

  @override
  String toString() {
    return '($x, $y, $z)';
  }

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    var dz = z - other.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }

  double square(Point second, Point third) {
    // площадь треугольника, образованного из трех точек с координатами в трехмерном пространстве (z для площади не используется)
    return 0.5 *
        ((x * (second.y - third.y) +
                second.x * (third.y - y) +
                third.x * (y - second.y)))
            .abs();
  }
}

// void main() {
//   final point1 = Point(2, 3, 5);
//   final point2 = Point(3, 6, 7);

//   print(point1.distanceTo(point2));

//   print(Point(1, 1, 1).distanceTo(Point(0, 0, 0)));

//   print(Point(1, 1, 1).square(Point(2, 3, 3), Point(4, 5, 2)));

//   print(Point.beginning(1, 1, 1));
//   print(Point.origin());
// }
