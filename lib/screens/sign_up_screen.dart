import 'package:donate_app/constants/colors/constant_colors.dart';
import 'package:donate_app/screens/widgets/custom_text_field.dart';
import 'package:donate_app/screens/widgets/text.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstantColors.bgColor,
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: TitleText(title: 'HOLA!'),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomTextField(
                controller: _nameController,
                hintText: 'enter a user name',
                logIcon: Icons.person_rounded),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                controller: _passwordController,
                hintText: 'choose a password',
                logIcon: Icons.key),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                controller: _passwordController,
                hintText: 'confirm password',
                logIcon: Icons.key),
            const SizedBox(height: 20),
            CustomTextField(
                controller: _nameController,
                hintText: 'enter your email',
                logIcon: Icons.mail,),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              child: const SizedBox(
                width: 290,
                height: 59,
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
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
