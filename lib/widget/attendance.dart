import 'package:flutter/material.dart';
import '../provider/studentProvider.dart';
import 'package:provider/provider.dart';
import '../repositry/repositry.dart';
import '../provider/student.dart';
class Attendance extends StatelessWidget {
  final DataRepository repository = DataRepository();

  @override
  Widget build(BuildContext context) {
    final student = Provider.of<Students>(context, listen: false);
    final stud = student.child;

    return ListView.builder(
        itemCount: stud.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                child: Image.asset(stud[index].image),
              ),
              title: Text(stud[index].name),
              subtitle: Text(stud[index].id),
              trailing: RaisedButton(
                color: Colors.blue,
                child: Text('Attend'),
                onPressed: () { repository.addstudent(stud[index]);},
              ),
            ),
          );
        });
  }
}
