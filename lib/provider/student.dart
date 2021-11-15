import 'package:cloud_firestore/cloud_firestore.dart';

class Student {
  final String name;
  final String image;
  final String id;
  Student({this.name, this.image, this.id});
  factory Student.fromJson(Map<String, dynamic> json) => _studentFromJson(json);

  Map<String, dynamic> toJson() => _studentToJson(this);

  @override
  String toString() => 'Student<$name>';
}
Student _studentFromJson(Map<String, dynamic> json) {
  return Student(
    name:json['name'] as String,
      image: json['notes'] as String,
      id: json['type'] as String,
      );
}
Map<String, dynamic> _studentToJson(Student instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
      
    };