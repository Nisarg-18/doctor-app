import 'package:doctor/screens/auth/login.dart';
import 'package:doctor/screens/auth/register.dart';
import 'package:doctor/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

class AuthOptions extends StatefulWidget {
  const AuthOptions({Key? key}) : super(key: key);

  @override
  State<AuthOptions> createState() => _AuthOptionsState();
}

class _AuthOptionsState extends State<AuthOptions> {
  @override
  Widget build(BuildContext context) {
    var customHeight = MediaQuery.of(context).size.height;
    var customWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            standardButton(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoginScreen();
              }));
            }, customWidth, customHeight, 'Login'),
            verticalSpace(customHeight * 0.03),
            standardButton(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const RegisterScreen();
              }));
            }, customWidth, customHeight, 'Sign Up'),
            verticalSpace(customHeight * 0.03),
            const Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
