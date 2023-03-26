// inspector_panel.dart
import 'package:flutter/material.dart';

class InspectorPanel extends StatelessWidget {
  const InspectorPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.grey[800],
      child: Center(
        child: Text("Inspector Panel"),
      ),
    );
  }
}
