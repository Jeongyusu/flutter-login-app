import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            Form(
              child: Column(
                children: [
                  CustomTextFormField(text: "Email"),
                  CustomTextFormField(text: "Password", isPassword: true),
                  SizedBox(height: large_gap),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/home"); //화면이 두 장 겹친다.
                      },
                      child: Text("Login"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
