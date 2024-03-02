import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:inforuet/model/csemodel.dart';
import 'package:inforuet/scrap/cseinfo.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.infoTab});


  final String title;
  final Future<TableInfo> infoTab;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> departments = ['EEE','CSE','ECE','ETE','ME','IPE','GCE','MTE','MSE','ChE','CE','URP','Arch.','BECM'];

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
      
      body:  Center(  
           // child: Center(child: Text('Homepage contains\n a bottom navbar with navigation options\n bg will have a vector art of ruet gate\n and some infos like \nabout \n history\n motto\n overview or summary]n this thing will be at cards with animation  of rotating or \n swapping',
          //  textAlign: TextAlign.center,
             child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(departments.length, (index){
                return Card(
                  color: Color.fromARGB(255, 247, 226, 239),
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                        splashColor: Color.fromARGB(255, 202, 233, 236).withAlpha(30),
                        onTap: (){
                          navigateTo( CseInfo(cseTabInfos: widget.infoTab,));
                        },
                      child: SizedBox(
                        width: w/2.5,
                        height: h/6,
                        child: Center(child: Text('Dept of ${departments[index]}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                        ),
                        ),
                      ),
                  ),
                   
                );
              }),
              ),
            ),
            
            
      
    );
  }

  navigateTo(Widget page){
    Navigator.push(context, 
    MaterialPageRoute(builder: (context)=> page)
    );
  }
}

