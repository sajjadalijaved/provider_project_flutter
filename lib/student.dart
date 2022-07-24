import 'package:flutter/widgets.dart';

class Student extends ChangeNotifier {
  int _rollNo;
  String _name;
  double _fee;
  Student(this._rollNo, this._name, this._fee);
  @override
  String toString() {
    return 'Student{_rollNo: $_rollNo, _name: $_name, _fee: $_fee}';
  }

  double get fee => _fee;

  set fee(double value) {
    _fee = value;
    notifyListeners();
  }

  String get name => _name;

  set name(String value) {
    _name = value;
    notifyListeners();
  }

  int get rollNo => _rollNo;

  set rollNo(int value) {
    _rollNo = value;
    notifyListeners();
  }
}
