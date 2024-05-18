import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Achievements",
         style: TextStyle(
          fontFamily: 'ChakraPetch'
        ),
        ),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://www.ruet.ac.bd/achivement',
        javascriptMode: JavascriptMode.unrestricted,
      ),
       );
  }
}