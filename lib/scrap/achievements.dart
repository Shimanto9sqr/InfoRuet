import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Achievements extends StatefulWidget {
  const Achievements({super.key});

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
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
      )
      ..loadRequest(Uri.parse('https://www.ruet.ac.bd/achivement'),);
  }
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
      body: _isLoading? Center(child: CircularProgressIndicator(),): WebViewWidget(controller: controller),
       );
  }
}