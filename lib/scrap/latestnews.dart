import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({super.key});

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
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
      body: const  WebView(
            initialUrl: 'https://www.ruet.ac.bd/news-and-event',
            javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}