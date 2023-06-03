import 'package:flutter/material.dart';
import 'package:unibit_ui/utils/ui_constants.dart';

class GradientElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final List<Color> gradientColors;

  const GradientElevatedButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors,
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
