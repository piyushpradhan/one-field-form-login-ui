import 'package:flutter/material.dart';
import 'package:one_field_form/one_field_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController textEditingController =
      new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 240,
          ),
          Center(
            child: Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                letterSpacing: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: OneFieldLoginForm(
              textEditingController: textEditingController,
              animationDuration: Duration(milliseconds: 200),
              onEmailSubmit: () {},
              onPasswordSubmit: () {},
              validateEmail: () {
                return textEditingController.text.isNotEmpty;
              },
              validatePassword: () {
                return textEditingController.text.isNotEmpty;
              },
              login: () {},
              iconBackground: Colors.black,
              iconColor: Colors.white,
              iconBorderColor: Colors.white,
              iconBorderStyle: BorderStyle.solid,
              iconBorderWidth: 2.0,
              textFieldBorderColor: Colors.white,
              textFieldBorderStyle: BorderStyle.solid,
              textFieldColor: Colors.black,
              textFieldBorderWidth: 2.0,
              textFieldErrorBorderColor: Colors.redAccent,
              textFieldPadding:
                  const EdgeInsets.only(left: 52.0, top: 2.0, right: 8.0),
              textFieldTextColor: Colors.white,
              textFieldErrorBackgroundColor: Colors.black,
              postFormSubmitWidget: Welcome(),
            ),
          ),
        ],
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.check_circle_outline_rounded,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
