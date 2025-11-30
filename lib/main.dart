import 'package:flutter/material.dart';
import 'screens/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Main page which opens
    return MaterialApp(
      theme: ThemeData(fontFamily: 'VendSans'),
      home: LoginPage(),
    );
  }
}
