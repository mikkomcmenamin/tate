// inspector_panel.dart
import 'package:flutter/material.dart';
import 'package:tate/presentation/theme/reusable_widgets.dart';

class InspectorPanel extends StatelessWidget {
  const InspectorPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TateFrame(
      child: Container(
        width: 300,
        child: Center(
          child: Text("Inspector Panel"),
        ),
      ),
    );
  }
}
