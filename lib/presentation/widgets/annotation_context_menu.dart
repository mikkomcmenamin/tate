import 'package:flutter/material.dart';

class AnnotationContextMenu extends StatelessWidget {
  const AnnotationContextMenu({
    Key? key,
    required this.onDelete,
  }) : super(key: key);

  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              onDelete();
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              color: Colors.grey.shade200,
              child: Text('Remove'),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              color: Colors.grey.shade200,
              child: Text('Placeholder'),
            ),
          ),
        ],
      ),
    );
  }
}
