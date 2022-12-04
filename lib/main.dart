import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DoctorApp());
}


class DoctorApp extends StatefulWidget {
  @override
  State<DoctorApp> createState() => _DoctorAppState();
}

class _DoctorAppState extends State<DoctorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      initialRoute: LoginScreen.id,
      routes: {
        
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }


}

