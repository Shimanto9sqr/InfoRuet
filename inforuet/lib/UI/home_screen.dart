import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:inforuet/UI/emergency.dart';
// import 'package:inforuet/UI/home.dart';
// import 'package:inforuet/UI/ruet_gallery.dart';
import 'package:inforuet/utility/campus_widget.dart';
//import 'package:inforuet/utility/clipper.dart';
import 'package:inforuet/utility/feed_widget.dart';
import 'package:inforuet/utility/photo_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 170, 231, 244),
                  Color.fromARGB(255, 92, 245, 199),
                  Color.fromARGB(185, 4, 221, 241),
                  
                ],
              ),
            ),
            child: const Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Info",
                  style: TextStyle(
                    fontFamily: 'Workbench',
                    fontSize: 25,
                  ),
                ),
                Text(
                  "RUET",
                  style: TextStyle(
                    fontFamily: 'Workbench',
                    fontSize: 40,
                  ),
                ),
              ],
            )),
          )),
      body: 
           CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .4,
                        width: MediaQuery.of(context).size.width,
                        child: const PhotoWidget(),
                      ),
                      const FeedWidget(),
                      const CampusWidget(),
                    ],
                  ),
                ),
              ],
            )  
    );
  }
}

// class SliverAppBar extends SliverPersistentHeaderDelegate {
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return SizedBox(
//       height: 280,
//       child: ClipPath(
//         clipper: AppBarClipper(),
//         child: Container(
//             width: MediaQuery.of(context).size.width,
//             height: 280,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 77, 240, 59),
//                   Color.fromARGB(186, 99, 222, 234)
//                 ],
//               ),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height / 15,
//                 ),
//                 const Text(
//                   "Info",
//                   style: TextStyle(
//                     fontFamily: 'Workbench',
//                     fontSize: 25,
//                   ),
//                 ),
//                 const Text(
//                   "RUET",
//                   style: TextStyle(
//                     fontFamily: 'Workbench',
//                     fontSize: 40,
//                   ),
//                 ),
//               ],
//             )),
//       ),
//     );
//   }

//   @override
//   double get maxExtent => 280;

//   @override
//   double get minExtent => 140;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return oldDelegate.maxExtent != maxExtent ||
//         oldDelegate.minExtent != minExtent;
//   }
// }
