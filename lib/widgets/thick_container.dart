import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: const Color(0xFFE5E5E5),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: Colors.white),
      ),
    );
  }
}
