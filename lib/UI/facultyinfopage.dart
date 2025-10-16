import 'package:flutter/material.dart';

class FacultyInfo extends StatefulWidget {
  const FacultyInfo({super.key});

  @override
  State<FacultyInfo> createState() => _FacultyInfoState();
}

class _FacultyInfoState extends State<FacultyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('Faculty Info',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        centerTitle: true,
      ),
      body: const Center(

      ),
    );
  }
}