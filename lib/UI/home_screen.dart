import 'package:flutter/material.dart';
import 'package:inforuet/utility/campus_widget.dart';
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
                  Color.fromARGB(255, 7, 7, 7),
                  Color.fromARGB(255, 10, 10, 10),
                  Color.fromARGB(185, 15, 15, 15),
                  
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
                    color: Colors.white,
                    fontFamily: 'Workbench',
                    fontSize: 25,
                  ),
                ),
                Text(
                  "RUET",
                  style: TextStyle(
                    color: Colors.white,
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
