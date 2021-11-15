import 'package:cloud_firestore/cloud_firestore.dart';
import '../provider/student.dart';

class DataRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('Students Attend');
      Future<DocumentReference> addstudent(Student student) {
    return collection.add(student.toJson());
  }
  
}
