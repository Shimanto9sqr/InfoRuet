import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HallLife extends StatefulWidget {
  const HallLife({super.key});

  @override
  State<HallLife> createState() => _HallLifeState();
}

class _HallLifeState extends State<HallLife> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Hall Life",
         style: TextStyle(
          fontFamily: 'ChakraPetch'
        ),
        ),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://www.ruet.ac.bd/list/provosts-of-residential-halls',
        javascriptMode: JavascriptMode.unrestricted,
      ),
       );
  }
}