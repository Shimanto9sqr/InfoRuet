import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Holiday extends StatefulWidget {
  const Holiday({super.key});

  @override
  State<Holiday> createState() => _HolidayState();
}

class _HolidayState extends State<Holiday> {
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
      ..loadRequest(Uri.parse('https://www.ruet.ac.bd/page/holidays'),);
  }
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
      body: _isLoading? Center(child: CircularProgressIndicator(),): WebViewWidget(controller: controller),
       );
  }
}