import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:inforuet/UI/emergency.dart';
import 'package:inforuet/UI/home.dart';
import 'package:inforuet/UI/ruet_gallery.dart';
import 'package:inforuet/utility/clipper.dart';
class HomaePage extends StatefulWidget {
  const HomaePage({super.key});

  @override
  State<HomaePage> createState() => _HomaePageState();
}

class _HomaePageState extends State<HomaePage> {
   int _selectedIndex =0;
   List<Widget> _pages= <Widget>[RuetGallery(), HomaePage(),MyHomePage(title: 'xxx'),EmergencyCall()];
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(milliseconds: 200));

    FlutterNativeSplash.remove();
  }
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _selectedIndex==1? CustomScrollView(
        slivers: <Widget>[
         SliverPersistentHeader(delegate: SliverAppBar(),
         pinned: true,
          ),
        SliverList(delegate: SliverChildListDelegate([
         
        ]))
          
        ],
      ): _pages.elementAt(_selectedIndex),
    bottomNavigationBar: BottomNavigationBar(
      
    type: BottomNavigationBarType.fixed,  
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.photo_album),
        label: 'Photos',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: 'Academic',
      ),
     BottomNavigationBarItem(
        icon: Icon(Icons.warning_amber),
        label: 'Emergency',
      ),
    ],
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
      ),
    );
  }
}


class SliverAppBar extends SliverPersistentHeaderDelegate{
    @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: 280,
      child: ClipPath(
        clipper: AppBarClipper(),
        child: Container(
         
           width: MediaQuery.of(context).size.width,
                height: 280,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 77, 240, 59),Color.fromARGB(186, 99, 222, 234)],
                  ),
                ),
                 child:  Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height/15,
                            ),
                            const Text("Info",
                            style: TextStyle(
                              fontFamily: 'Workbench',
                              fontSize: 25,
                              
                            ),
                            
                            
                            ),
                           const Text("RUET",
                            style: TextStyle(
                              fontFamily: 'Workbench',
                              fontSize: 40,
                              
                            ),
                            ),
                        ],
                 )
        ),
      ),
    );
  }
  @override

  double get maxExtent => 280;
  
  @override
  
  double get minExtent => 140;
  
  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
       return oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
  }
  

}