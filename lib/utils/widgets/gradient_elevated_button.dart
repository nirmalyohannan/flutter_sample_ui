import 'package:flutter/material.dart';
import 'package:unibit_ui/config/app_colors.dart';
import 'package:unibit_ui/utils/ui_constants.dart';

class GradientElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final List<Color>? gradientColors;
  final double? width;

  const GradientElevatedButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      this.gradientColors,
      this.width});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors ??
                  [
                    const Color.fromARGB(255, 255, 196, 140),
                    AppColors.primaryColor
                  ],
            ),
            borderRadius: UIConstants.borderRadius20),
        child: Text(
          buttonText,
          style: const TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
