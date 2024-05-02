import 'package:flutter/material.dart';

class RuetGallery extends StatefulWidget {
  const RuetGallery({super.key});

  @override
  State<RuetGallery> createState() => _RuetGalleryState();
}

class _RuetGalleryState extends State<RuetGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Icon(
        Icons.photo,
        size: MediaQuery.of(context).size.width,
      ),
    );
  }
}