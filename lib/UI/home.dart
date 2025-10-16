import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:inforuet/model/fetcher.dart';
import 'package:inforuet/model/table_model.dart';
import 'package:inforuet/scrap/teachers_info.dart';
import 'package:inforuet/utility/cardwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

 
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> eceFaculty = ['EEE', 'CSE', 'ECE', 'ETE'];
  final List<String> meFaculty = ['ME', 'IPE', 'GCE', 'MTE', 'MSE', 'ChE'];
  final List<String> ceFaculty = ['CE', 'URP', 'ARCH', 'BECM'];
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(milliseconds: 200));

    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return 
     
       Scaffold(
         appBar: PreferredSize(preferredSize: const Size.fromHeight(100.0),
          child: Container(         
            width: MediaQuery.of(context).size.width,
             decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 170, 231, 244),Color.fromARGB(185, 4, 221, 241)],
                ),
              ),
              child: const Center(
                child:  Text(
                  'Faculty Information',
                  style: TextStyle(
                    fontFamily: 'Micro5Charted',
                    fontSize: 30
                  ),
                ),
              ),
          )),
         body: SingleChildScrollView(
           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     const Text(
                       'ECE Faculty',
                       style: TextStyle(
                        fontFamily: 'Micro5Charted',
                         fontSize: 40,
                       ),
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         CardWidget(
                             h: h / 7,
                             w: w / 4,
                             dept: eceFaculty[0],
                             onTap: () {
                               Future<TableInfo> teachersInfo = getData(eceFaculty[0]); 
                               navigateTo(TeachersInfo(teachersTabinfo:teachersInfo, deptName: eceFaculty[0] , ));
                             }),
                         CardWidget(
                             h: h / 7,
                             w: w / 4,
                             dept: eceFaculty[1],
                             onTap: () {
                               Future<TableInfo> teachersInfo = getData(eceFaculty[1]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo , deptName: eceFaculty[1],));
                             }),
                         CardWidget(
                             h: h / 7,
                             w: w / 4,
                             dept: eceFaculty[2],
                             onTap: () {
                               Future<TableInfo> teachersInfo = getData(eceFaculty[2]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo , deptName: eceFaculty[2],));
                             }),
                       ],
                     ),
                     SizedBox(
                       height: h/20,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         SizedBox(width: w/20,),
                         CardWidget(
                             h: h / 7, w: w / 4, dept: eceFaculty[3], onTap: () {
                               Future<TableInfo> teachersInfo = getData(eceFaculty[3]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo , deptName: eceFaculty[3],));
                             })
                       ],
                     )
                   ],
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     const Text(
                       'ME Faculty',
                       style: TextStyle(
                         fontFamily: 'Micro5Charted',
                         fontSize: 40,
                       ),
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         CardWidget(
                             h: h / 7,
                             w: w / 4,
                             dept: meFaculty[0],
                             onTap: () {
                               Future<TableInfo> teachersInfo = getData(meFaculty[0]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo, deptName:meFaculty[0],));
                             }),
                         CardWidget(
                             h: h / 7,
                             w: w / 4,
                             dept: meFaculty[1],
                             onTap: () {
                               Future<TableInfo> teachersInfo = getData(meFaculty[1]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo, deptName: meFaculty[1],));
                             }),
                         CardWidget(
                             h: h / 7,
                             w: w / 4,
                             dept: meFaculty[2],
                             onTap: () {
                               Future<TableInfo> teachersInfo = getData(meFaculty[2]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo, deptName: meFaculty[2],));
                             }),
                       ],
                     ),
                     SizedBox(
                       height: h/20,
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         CardWidget(
                             h: h / 7, w: w / 4, dept: meFaculty[3], onTap: () {
                               Future<TableInfo> teachersInfo = getData(meFaculty[3]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo, deptName: meFaculty[3],));
                             }),
                         CardWidget(
                             h: h / 7, w: w / 4, dept: meFaculty[4], onTap: () {
                               Future<TableInfo> teachersInfo = getData(meFaculty[4]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo, deptName:meFaculty[4]));
                             }),
                         CardWidget(
                             h: h / 7, w: w / 4, dept: meFaculty[5], onTap: () {
                               Future<TableInfo> teachersInfo = getData(meFaculty[5]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo, deptName: meFaculty[5],));
                             }),
                       ],
                     )
                   ],
                 ),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     const Text(
                       'CE Faculty',
                       style: TextStyle(
                         fontFamily: 'Micro5Charted',
                         fontSize: 40,
                       ),
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         CardWidget(
                             h: h / 7,
                             w: w / 4,
                             dept: ceFaculty[0],
                             onTap: () {
                               Future<TableInfo> teachersInfo = getData(ceFaculty[0]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo, deptName:ceFaculty[0],));
                             }),
                         CardWidget(
                             h: h / 7,
                             w: w / 4,
                             dept: ceFaculty[1],
                             onTap: () {
                               Future<TableInfo> teachersInfo = getData(ceFaculty[1]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo, deptName: ceFaculty[1],));
                             }),
                         CardWidget(
                             h: h / 7,
                             w: w / 4,
                             dept: ceFaculty[2],
                             onTap: () {
                               Future<TableInfo> teachersInfo = getData(ceFaculty[2]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo, deptName: ceFaculty[2],));
                             }),
                       ],
                     ),
                       SizedBox(
                       height: h/20,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         SizedBox(width: w/20,),
                         CardWidget(
                             h: h / 7,
                              w: w / 4,
                               dept: ceFaculty[3],
                                onTap: () {
                                 Future<TableInfo> teachersInfo = getData(ceFaculty[3]); 
                               navigateTo(TeachersInfo(teachersTabinfo: teachersInfo, deptName: ceFaculty[3],));
                                })
                       ],
                     )
                   ],
                 ),
               ],
             ),
           ),
         ),
       );
    
    
  }

  navigateTo(Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
