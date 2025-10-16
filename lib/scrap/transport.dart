import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TransportBus extends StatefulWidget {
  const TransportBus({super.key});

  @override
  State<TransportBus> createState() => _TransportBusState();
}

class _TransportBusState extends State<TransportBus> {
  late final WebViewController controller;
  bool _isLoading = true;
  @override
  void initState(){
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
          NavigationDelegate(
              onPageFinished: (String url){
                setState(() {
                  _isLoading = false;
                });
              }
          )
      )
      ..loadRequest(Uri.parse('https://www.ruet.ac.bd/page/transportation'),);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Transport",
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