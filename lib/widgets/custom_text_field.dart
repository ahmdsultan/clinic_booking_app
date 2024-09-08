import 'package:clinic_booking_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, required this.hintText, required this.icon, this.isSecure});
  final String hintText;
  final IconData icon;
  bool? isSecure = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: colors['lightGray'],
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextFormField(
          obscureText: isSecure ?? false,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            prefixIconColor: colors['darkGray'],
            contentPadding: EdgeInsets.only(left: 10, top: 10),
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
