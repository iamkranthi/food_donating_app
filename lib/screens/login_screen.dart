import 'package:donate_app/constants/colors/constant_colors.dart';
import 'package:donate_app/screens/widgets/text.dart';
import 'package:donate_app/screens/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstantColors.bgColor,
        child: Column(
          children: [
            Image.asset(
              'assets/images/login.png',
              scale: 1.3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TitleText(title: 'Welcome\nBack'),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomTextField(
                controller: _nameController,
                hintText: 'Username',
                logIcon: Icons.person_rounded),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                controller: _passwordController,
                hintText: 'password',
                logIcon: Icons.key),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>   SignUpScreen()));

              },
              child: const SizedBox(
                width: 290,
                height: 60,
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
