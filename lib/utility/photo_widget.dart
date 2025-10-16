import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('asset/p1.jpg',
               height: 200.0,
               width: MediaQuery.of(context).size.width,
              ),
            ),
           const Text('Architecture Building RUET',
           style: TextStyle(
            fontFamily: 'ChakraPetch',
            fontSize: 20,

           ),
           ) , 
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
              child: SizedBox(
              height: 100.0,
              width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image.asset('asset/p3.jpg',
                     height: 200.0,
                     width: MediaQuery.of(context).size.width,
                    ),
                   const Text('CSE Building,RUET',
                    style: TextStyle(
            fontFamily: 'ChakraPetch',
            fontSize: 20,

           ),
                   ),   
                  ],
                ),
              ),
              
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
              child: SizedBox(
              height: 100.0,
              width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image.asset('asset/p2.jpg',
                     height: 200.0,
                     width: MediaQuery.of(context).size.width,
                    ),
                   const Text('Achievements of CSE',
                    style: TextStyle(
            fontFamily: 'ChakraPetch',
            fontSize: 20,

           ),
                   ),  
                  ],
                ),
              ),
              
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
              child: SizedBox(
              height: 100.0,
              width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image.asset('asset/p0.jpg',
                     height: 200.0,
                     width: MediaQuery.of(context).size.width,
                    ),
                   const Text('46th ICPC World Finals Egypt',
                    style: TextStyle(
            fontFamily: 'ChakraPetch',
            fontSize: 20,

           ),
                   ), 
                  ],
                ),
              ),
              
        ),
        SizedBox(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Image.asset('asset/p4.jpg',
               height: 200.0,
               width: MediaQuery.of(context).size.width,
              ),
             const Text('Lab Facilities',
              style: TextStyle(
            fontFamily: 'ChakraPetch',
            fontSize: 20,

           ),
             ),   
            ],
          ),
        ),                     
      ],
    );
  }
}