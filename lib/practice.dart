import 'dart:ui';

Function subtraction(int num) {
  return (val) => val - num;
}

abstract class Object {
  String _name;
  int _operatingTime;

  Object({required String name, required int time})
      : _name = name,
        _operatingTime = time;

  factory Object.factory(
      {required String name,
      required int operatingTime,
      required String type}) {
    switch (type) {
      case 'bag':
        return Bag(name: name, time: operatingTime);
      case 'pen':
        return Pen(name: name, time: operatingTime);
    }
    throw Exception('unknown animal type');
  }

  void used();

  get name => _name;

  get time => _operatingTime;
}

mixin ColorMix {
  late Color _color;

  Color get color => _color;

  set color(Color color) => _color = color;
}

class Bag extends Object with ColorMix {
  late double _cost;

  Bag({required String name, required int time})
      : super(name: name, time: time) {
    _color = const Color.fromRGBO(255, 0, 0, 1.0);
    print('The bag can last you up to {$_operatingTime} years');
  }

  @override
  void used() {
    print('You can carry your things in it');
  }

  @override
  String toString() {
    return '$_color $_name bag worth $_cost';
  }

  get cost => _cost;

  set setCost(double cost) => _cost = cost;
}

class Pen extends Object with ColorMix {
  Pen({required String name, required int time})
      : super(name: name, time: time) {
    _color = const Color.fromRGBO(0, 0, 0, 1.0);
    print('The bag can last you up to {$_operatingTime} years');
  }

  @override
  void used() {
    print('You can write with this');
  }

  @override
  String toString() {
    return '$_color $_name pen';
  }
}
