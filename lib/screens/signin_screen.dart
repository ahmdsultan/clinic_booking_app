import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/button.dart';
import '../widgets/custom_text_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 40;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors['blue'],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                icon: Icons.person,
                hintText: 'User Name',
              ),
              SizedBox(
                height: height,
              ),
              CustomTextField(
                hintText: 'Password',
                icon: Icons.key,
                isSecure: true,
              ),
              SizedBox(
                height: height,
              ),
              const ButtonWidget(
                text: 'Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
