void main() {
  final mySquare = Square(side: -10);
 // mySquare.side = -20;
  print('area: ${mySquare.area}');
}

class Square {
  double _side;

  Square({required double side}) 
    : assert(side >= 0, 'Side cannot be negative' ),
    _side = side;

  double get area => _side * _side;

  double calculateArea() {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value <= 0) throw 'Side cannot be negative';

    _side = value;
  }
}
