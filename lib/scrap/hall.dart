import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HallLife extends StatefulWidget {
  const HallLife({super.key});

  @override
  State<HallLife> createState() => _HallLifeState();
}

class _HallLifeState extends State<HallLife> {
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
      ..loadRequest(Uri.parse('https://www.ruet.ac.bd/list/provosts-of-residential-halls'),);
  }
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
      body: _isLoading? Center(child: CircularProgressIndicator(),) : WebViewWidget(controller: controller),
       );
  }
}