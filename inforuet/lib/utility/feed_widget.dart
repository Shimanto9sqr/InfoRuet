import 'package:flutter/material.dart';
import 'package:inforuet/scrap/achievements.dart';
import 'package:inforuet/scrap/holidays.dart';
import 'package:inforuet/scrap/latestnews.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({
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
               Icon(Icons.feed),
               Text("Feeds",
                style: TextStyle(
            fontFamily: 'ChakraPetch',
            fontSize: 20,

           ),
               ),
            ],
            ),
            Row(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Holiday()));
                  },
                   child: Container(
                     height: 100,
                     width: MediaQuery.of(context).size.width*.6,
                     decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                           gradient: LinearGradient(
                                     colors: [
                                   Color.fromARGB(255, 198, 232, 240),
                                   Color.fromARGB(184, 4, 203, 221)
                             ],
              ),
            ),
                     child: const Center(child:  Text('Academic Calendar',
                      style: TextStyle(
            fontFamily: 'ChakraPetch',
            fontSize: 20,

           ),
                     ),),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(
                  onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Achievements()));
                  },
                   child: Container(
                     
                     height: 100,
                     width: MediaQuery.of(context).size.width*.275,
                     decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                        gradient: LinearGradient(
                                       colors: [
                                     Color.fromARGB(255, 198, 232, 240),
                                     Color.fromARGB(184, 4, 203, 221)
                               ],
                                 ),
                     ),
                     child: const Center(
                       child:  Text("Achievements",
                        style: TextStyle(
                                   fontFamily: 'ChakraPetch',
                                   fontSize: 15,
                       
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LatestNews()));
                  },
                   child: Container(
                     height: 100,
                     width: MediaQuery.of(context).size.width,
                     decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                                         colors: [
                                       Color.fromARGB(255, 198, 232, 240),
                                       
                                       Color.fromARGB(184, 4, 203, 221),
                                       Color.fromARGB(255, 92, 245, 199),
                                 ],
                                   ),
                     ),
                     child: const Center(
                       child:  Text("News & Events",
                        style: TextStyle(
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
    
     ),
                      );
  }
}