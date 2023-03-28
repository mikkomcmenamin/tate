import 'package:flutter/material.dart';

class TateFrame extends StatelessWidget {
  final Widget child;
  final double gradientRadius;

  const TateFrame({super.key, required this.child, this.gradientRadius = 5.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Slightly rounded borders
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1), // Thin white gray border
        gradient: const RadialGradient(
          center: Alignment.center,
          radius: 7,
          colors: [
            Color.fromRGBO(9, 12, 14, 1),
            Color.fromRGBO(20, 25, 32, 1),
          ],
        ),
      ),
      child: child,
    );
  }
}
