import 'package:flutter/material.dart';
import 'package:tate/widgets/draw_bounding_box_button.dart';

import 'annotate_image_button.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Adjust the width to your preference
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [AnnotateImageButton(), DrawBoundingBoxButton()],
      ),
    );
  }
}
