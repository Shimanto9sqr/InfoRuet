import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({super.key});

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
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
      ..loadRequest(Uri.parse('https://www.ruet.ac.bd/news-and-event'),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News",
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