import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:inforuet/UI/emergency.dart';
import 'package:inforuet/UI/home.dart';
import 'package:inforuet/UI/home_screen.dart';
import 'package:inforuet/UI/about.dart';
import 'package:url_launcher/url_launcher.dart';

class HomaePage extends StatefulWidget {
  const HomaePage({super.key});

  @override
  State<HomaePage> createState() => _HomaePageState();
}

class _HomaePageState extends State<HomaePage> {
  int _selectedIndex = 1;
  final List<Widget> _pages = <Widget>[
    const AboutRuet(),
    const HomeScreen(),
    const MyHomePage(),
    const EmergencyCall(),
  ];
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(milliseconds: 200));

    FlutterNativeSplash.remove();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),         
      drawer: SizedBox(
          width: MediaQuery.of(context).size.width*0.7,
          child: Drawer(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                   decoration: const BoxDecoration(
                   gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 54, 54, 54),
                  Color.fromARGB(255, 24, 23, 23),
                ],
              ),
            ),
                ),
                ListTile(
                  leading: const  Icon(
                    Icons.school,
                    color: Color.fromARGB(209, 0, 0, 0),
                  ),
                  title: const Text('Glance of RUET'),
                  onTap:()async{
                        final Uri url = Uri(
                          scheme: 'https',
                          path: 'www.ruet.ac.bd/page/history',
                        );
                        if(await canLaunchUrl(url)){
                          await launchUrl(url);
                        } else{
                          print('can not launch this url');
                        }
                      },
                ),
                ListTile(
                  leading: const  Icon(
                    Icons.shortcut,
                    color: Color.fromARGB(209, 0, 0, 0),
                  ),
                  title: const Text('Faculty Info'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
                  },
                ),
                ListTile(
                  leading: const  Icon(
                    Icons.webhook,
                    color: Color.fromRGBO(0, 0, 0, 0.82),
                  ),
                  title: const Text('RUET Website',
                  selectionColor: Color.fromARGB(239, 71, 146, 243),
                  ),
                  onTap: ()async{
                        final Uri url = Uri(
                          scheme: 'https',
                          path: 'www.ruet.ac.bd',
                        );
                        if(await canLaunchUrl(url)){
                          await launchUrl(url);
                        } else{
                          print('can not launch this url');
                        }
                      },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'About',
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
