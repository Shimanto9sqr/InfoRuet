import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutRuet extends StatefulWidget {
  const AboutRuet({super.key});

  @override
  State<AboutRuet> createState() => _AboutRuetState();
}

class _AboutRuetState extends State<AboutRuet> {
  late final WebViewController controller;
  bool _isLoading = true;
  @override
  void initState(){
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url){
            setState(() {
              _isLoading = false;
            });
          }
        )
      )..loadRequest(Uri.parse('https://www.ruet.ac.bd/page/campus-details'),);
  }
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
      body: _isLoading? Center(child: CircularProgressIndicator()): WebViewWidget(controller: controller),
    );
  }
}