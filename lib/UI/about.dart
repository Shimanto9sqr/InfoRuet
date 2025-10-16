import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutRuet extends StatefulWidget {
  const AboutRuet({super.key});

  @override
  State<AboutRuet> createState() => _AboutRuetState();
}

class _AboutRuetState extends State<AboutRuet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RUET Details",
        style: TextStyle(
          fontFamily: 'ChakraPetch'
        ),
        ),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://www.ruet.ac.bd/page/campus-details',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}