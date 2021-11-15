import 'package:flutter/material.dart';
import 'widget/attendance.dart';
import 'package:provider/provider.dart';
import './provider/studentProvider.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
      create: (context) => Students(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [IconButton(icon: Icon(Icons.add), onPressed: null)],
          backgroundColor: Colors.black,
          title: Text(
            'Attendance CS50',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Attendance(),
      ),
    );
  }
}
