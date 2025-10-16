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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Faculty Info'),
        centerTitle: true,
      ),
      body: const Center(

      ),
    );
  }
}