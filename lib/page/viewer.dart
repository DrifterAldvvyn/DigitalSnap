import 'package:flutter/material.dart';
import 'package:digital_snap/color.dart';
import 'package:photo_view/photo_view.dart';

class Viewer extends StatefulWidget {
  final int imgID;
  const Viewer({super.key, required this.imgID});

  @override
  State<Viewer> createState() => _ViewerState();
}

class _ViewerState extends State<Viewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: PhotoView(
          imageProvider: AssetImage(
            'asset/images/gallery/${widget.imgID.toString().padLeft(2, '0')}.JPG',
          ),
          backgroundDecoration: BoxDecoration(color: AppColors.background),
        ),
      ),
    );
  }
}
