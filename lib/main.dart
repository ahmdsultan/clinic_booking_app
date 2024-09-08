import 'package:clinic_booking_app/constants/colors.dart';
import 'package:clinic_booking_app/screens/signin_screen.dart';
import 'package:clinic_booking_app/widgets/button.dart';
import 'package:clinic_booking_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SigninScreen());
  }
}
