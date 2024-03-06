import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:inforuet/model/csemodel.dart';
import 'package:inforuet/scrap/cseinfo.dart';
import 'package:inforuet/utility/cardwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.infoTab});

  final String title;
  final Future<TableInfo> infoTab;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> eceFaculty = ['EEE', 'CSE', 'ECE', 'ETE'];
  final List<String> meFaculty = ['ME', 'IPE', 'GCE', 'MTE', 'MSE', 'ChE'];
  final List<String> ceFaculty = ['CE', 'URP', 'Arch.', 'BECM'];

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 220, 242),
        title: Text(widget.title),
        centerTitle: true,
      ),
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
                      fontSize: 20,
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
                            navigateTo(CseInfo(cseTabInfos: widget.infoTab));
                          }),
                      CardWidget(
                          h: h / 7,
                          w: w / 4,
                          dept: eceFaculty[1],
                          onTap: () {
                            navigateTo(CseInfo(cseTabInfos: widget.infoTab));
                          }),
                      CardWidget(
                          h: h / 7,
                          w: w / 4,
                          dept: eceFaculty[2],
                          onTap: () {
                            navigateTo(CseInfo(cseTabInfos: widget.infoTab));
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: w/20,),
                      CardWidget(
                          h: h / 7, w: w / 4, dept: eceFaculty[3], onTap: () {})
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
                      fontSize: 20,
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
                            navigateTo(CseInfo(cseTabInfos: widget.infoTab));
                          }),
                      CardWidget(
                          h: h / 7,
                          w: w / 4,
                          dept: meFaculty[1],
                          onTap: () {
                            navigateTo(CseInfo(cseTabInfos: widget.infoTab));
                          }),
                      CardWidget(
                          h: h / 7,
                          w: w / 4,
                          dept: meFaculty[2],
                          onTap: () {
                            navigateTo(CseInfo(cseTabInfos: widget.infoTab));
                          }),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CardWidget(
                          h: h / 7, w: w / 4, dept: meFaculty[3], onTap: () {}),
                      CardWidget(
                          h: h / 7, w: w / 4, dept: meFaculty[4], onTap: () {}),
                      CardWidget(
                          h: h / 7, w: w / 4, dept: meFaculty[5], onTap: () {}),
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
                      fontSize: 20,
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
                            navigateTo(CseInfo(cseTabInfos: widget.infoTab));
                          }),
                      CardWidget(
                          h: h / 7,
                          w: w / 4,
                          dept: ceFaculty[1],
                          onTap: () {
                            navigateTo(CseInfo(cseTabInfos: widget.infoTab));
                          }),
                      CardWidget(
                          h: h / 7,
                          w: w / 4,
                          dept: ceFaculty[2],
                          onTap: () {
                            navigateTo(CseInfo(cseTabInfos: widget.infoTab));
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: w/20,),
                      CardWidget(
                          h: h / 7,
                           w: w / 4,
                            dept: ceFaculty[3],
                             onTap: () {})
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
