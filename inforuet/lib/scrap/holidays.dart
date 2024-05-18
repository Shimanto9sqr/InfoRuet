import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Holiday extends StatefulWidget {
  const Holiday({super.key});

  @override
  State<Holiday> createState() => _HolidayState();
}

class _HolidayState extends State<Holiday> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Holidays",
         style: TextStyle(
          fontFamily: 'ChakraPetch'
        ),
        ),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://www.ruet.ac.bd/page/holidays',
        javascriptMode: JavascriptMode.unrestricted,
      ),
       );
  }
}