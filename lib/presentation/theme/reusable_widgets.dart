import 'package:flutter/material.dart';
import 'package:tate/presentation/theme/AppColors.dart';

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

PopupMenuThemeData tateFramePopupMenuTheme(BuildContext context) {
  return PopupMenuThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10), // Adjust the border radius
      side: BorderSide(
        color: Colors.white.withOpacity(0.2), // Adjust the border color
        width: 1, // Adjust the border width
      ),
    ),
    color: const Color.fromRGBO(9, 12, 14, 1).withOpacity(0.8), // Adjust the background color
    textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.textPrimary), // Adjust the text color
  );
}
