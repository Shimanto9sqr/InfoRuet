import 'package:flutter/material.dart';

class EmergencyCall extends StatefulWidget {
  const EmergencyCall({super.key});

  @override
  State<EmergencyCall> createState() => _RuetGalleryState();
}

class _RuetGalleryState extends State<EmergencyCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Icon(
        Icons.warning_amber_outlined,
        size: MediaQuery.of(context).size.width,
      ),
    );
  }
}