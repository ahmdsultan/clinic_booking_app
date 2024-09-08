import 'package:clinic_booking_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox( // I change the Widget type from Expanded to Size box with add [width :double.infinity ] to Make it full width if needed
        width: double.infinity, 
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20),
            backgroundColor: colors['blue'],
          ),
          child: Text(
            text,
            style: TextStyle(color: colors['white']),
          ),
        ),
      ),
    );
  }
}
