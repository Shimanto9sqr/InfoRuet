import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TransportBus extends StatefulWidget {
  const TransportBus({super.key});

  @override
  State<TransportBus> createState() => _TransportBusState();
}

class _TransportBusState extends State<TransportBus> {
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
      body: const WebView(
        initialUrl: 'https://www.ruet.ac.bd/page/transportation',
        javascriptMode: JavascriptMode.unrestricted,
      ),
       );
  }
}