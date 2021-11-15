import './student.dart';
import 'package:flutter/foundation.dart';

class Students extends ChangeNotifier {
  List<Student> _child = [
    Student(
      name: 'Eriny',
      image: 'assets/image/Eriny.jpg',
      id: '136325',
    ),
    Student(
      name: 'Bolis',
      image: 'assets/image/Bolis.jpg',
      id: '133825',
    ),
    Student(
      name: 'Ali',
      image: 'assets/image/Ali.jpg',
      id: '132525',
    ),
    Student(
      name: 'Seha',
      image: 'assets/image/Seha.jpg',
      id: '138561',
    ),
  ];
  List<Student> get child {
    return [..._child];
  }
}
