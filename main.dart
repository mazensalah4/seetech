import 'package:flutter/material.dart';
import 'package:qwerttt/screens/Add_company.dart';
import 'package:qwerttt/screens/Forget_password_screen.dart';
import 'package:qwerttt/screens/Home.dart';
import 'package:qwerttt/screens/Login_screen.dart';
import 'package:qwerttt/screens/Robot.dart';
import 'package:qwerttt/screens/firebase_options.dart';
import 'package:qwerttt/screens/payment_screen.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
