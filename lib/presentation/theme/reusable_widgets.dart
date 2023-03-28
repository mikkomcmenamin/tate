import 'package:flutter/material.dart';

class TateFrame extends StatelessWidget {
  final Widget child;

  const TateFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 20,
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
