import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CampusMap extends StatefulWidget {
  const CampusMap({super.key});

  @override
  State<CampusMap> createState() => _CampusMapState();
}

class _CampusMapState extends State<CampusMap> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Campus Map",
         style: TextStyle(
          fontFamily: 'ChakraPetch'
        ),
        ),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://www.ruet.ac.bd/page/campus-map',
        javascriptMode: JavascriptMode.unrestricted,
      ),
       );
  }
}