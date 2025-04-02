import 'package:flutter/material.dart';
import 'package:digital_snap/color.dart';
import 'package:photo_view/photo_view.dart';

class Viewer extends StatelessWidget {
  const Viewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: PhotoView(imageProvider: imageProvider),
      ),
    );
  }
}