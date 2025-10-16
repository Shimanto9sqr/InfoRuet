import 'package:flutter/material.dart';
import 'package:inforuet/scrap/hall.dart';
import 'package:inforuet/scrap/map.dart';
import 'package:inforuet/scrap/transport.dart';

class CampusWidget extends StatelessWidget {
  const CampusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.all(8.0),
     child:  SizedBox(
       height: 300,
       width: MediaQuery.of(context).size.width,
       child: Column(
         children: [
           const Row(
             children: [
               Icon(Icons.map),
               Text("Campus",
                style: TextStyle(
            fontFamily: 'ChakraPetch',
            fontSize: 20,

               ),
               ),
            ],
            ),
            Row(
             children: [
              Column(
                children: [
                  Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(
                  onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const  CampusMap()));
                  },
                   child: Container(
                     height: 100,
                     width: MediaQuery.of(context).size.width*.6,
                     decoration: const BoxDecoration(
                       color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                     ),
                     child: const Center(
                       child:  Text("Campus Map",
                        style: TextStyle(
                          color: Colors.white,
                                   fontFamily: 'ChakraPetch',
                                   fontSize: 20,
                       
                                  ),
                       ),
                     ),
                   ),
                   
                 ),
               ),
                Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HallLife()));
                  },
                   child: Container(
                     height: 100,
                     width: MediaQuery.of(context).size.width*.6,
                     decoration: const BoxDecoration(
                       color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                     ),
                     child: const Center(
                         child:  Text("Hall life",
                          style: TextStyle(
                            color: Colors.white,
                                     fontFamily: 'ChakraPetch',
                                     fontSize: 20,
                         
                                    ),
                         ),
                       ),
                   ),
                 ),
               ),
                ],
              ),
              
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TransportBus()));
                  },
                   child: Container(
                     
                     height: 215,
                     width: MediaQuery.of(context).size.width*.275,
                     decoration: const BoxDecoration(
                       color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                     ),
                     child: const Center(
                         child:  Text("Transport",
                          style: TextStyle(
                            color: Colors.white,
                                     fontFamily: 'ChakraPetch',
                                     fontSize: 20,
                         
                                    ),
                         ),
                       ),
                   ),
                 ),
               ),
             ],
            ),
          
         ],
       ),
    
     ),
                      );
  }
}