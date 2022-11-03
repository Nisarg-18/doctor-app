import 'package:doctor/screens/auth/authOptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AuthOptions(),
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
    );
  }
}
