import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:inforuet/utility/cardwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
   
    
    await Future.delayed(const Duration(seconds:2));
   
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(widget.title),
        centerTitle: true,
      ),
      
      body: const  Center(  
            child: Center(child: Text('Homepage contains\n a bottom navbar with navigation options\n bg will have a vector art of ruet gate\n and some infos like \nabout \n history\n motto\n overview or summary]n this thing will be at cards with animation  of rotating or \n swapping',
            textAlign: TextAlign.center,
            )
            
            )
      )
      //   child: Center(        
      //     child: Column(
          
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: <Widget>[
      //           SizedBox(
      //             height: h/50,
      //           ),

      //           Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: <Widget>[
      //                     CardWidget(h: h, w: w, dept: 'CSE',),
      //                     CardWidget(h: h, w: w, dept: 'EEE'),
      //               ], 
      //           ),
      //             SizedBox(
      //             height: h/50,
      //           ),

      //           Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: <Widget>[
      //                     CardWidget(h: h, w: w, dept: 'ECE'),
      //                     CardWidget(h: h, w: w, dept: 'ETE'),
      //               ], 
      //           ),
      //             SizedBox(
      //             height: h/50,
      //           ),

      //           Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: <Widget>[
      //                     CardWidget(h: h, w: w, dept: 'MTE'),
      //                     CardWidget(h: h, w: w, dept: 'MSE'),
      //               ], 
      //           ),
      //             SizedBox(
      //             height: h/50,
      //           ),

      //           Row(
      //              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: <Widget>[
      //                     CardWidget(h: h, w: w, dept: 'ME'),
      //                     CardWidget(h: h, w: w, dept: 'IPE'),
      //               ], 
      //           ),
      //             SizedBox(
      //             height: h/50,
      //           ),

      //           Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: <Widget>[
      //                     CardWidget(h: h, w: w, dept: 'CFPE'),
      //                     CardWidget(h: h, w: w, dept: 'GCE'),
      //               ], 
      //           ),
      //              SizedBox(
      //             height: h/50,
      //           ),

      //           Row(
      //              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: <Widget>[
      //                    CardWidget(h: h, w: w, dept: 'CE'),
      //                    CardWidget(h: h, w: w, dept: 'URP'),
      //               ], 
      //           ),
      //             SizedBox(
      //             height: h/50,
      //           ),

      //            Row(
      //              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: <Widget>[
      //                     CardWidget(h: h, w: w, dept: 'BECM'),
      //                     CardWidget(h: h, w: w, dept: 'ARCH'),
      //               ], 
      //           ),
               
      //       ],
      //     ),
      //   ),
      // ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

