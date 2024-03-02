import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:inforuet/UI/home.dart';
import 'package:inforuet/model/csemodel.dart';
//import 'package:inforuet/scrap/cseinfo.dart';


void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future<TableInfo> cseInfo = getCseDate();

  runApp(MyApp(info: cseInfo,));
}

 Future<TableInfo> getCseDate() async { 
    final url = Uri.parse('https://www.cse.ruet.ac.bd/teacher_list');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);
    //print(html);
    final images = html
          .querySelectorAll('#table_list > tbody > tr> td:nth-child(1) > img')
          .map((element)=> 'https://www.cse.ruet.ac.bd${element.attributes['src']}')
          .toList();
    final name = html
          .querySelectorAll('#table_list > tbody > tr> td:nth-child(3)> a').map((element) => element.innerHtml.trim())
          .toList();
    final designation = html
          .querySelectorAll('#table_list > tbody > tr> td:nth-child(7)').map((element) => element.innerHtml.trim())
          .toList();
    final department = html
          .querySelectorAll('#table_list > tbody > tr> td:nth-child(9)').map((element) => element.innerHtml.trim())
          .toList();
    final email = html
          .querySelectorAll('#table_list > tbody > tr> td:nth-child(11)').map((element) => element.innerHtml.trim())
          .toList();
    final phone = html
          .querySelectorAll('#table_list > tbody > tr> td:nth-child(13)').map((element) => element.innerHtml.trim())
          .toList();
    final officeContact = html
          .querySelectorAll('#table_list > tbody > tr> td:nth-child(15)').map((element) => element.innerHtml.trim())
          .toList();           

   // print('Count: ${images.length}');
    // for(int i=0;i<images.length;i++){
    //   print(images[i]);
    //   print(name[i]);
    //   print(designation[i]);
    //   print(department[i]);
    //   print(email[i]);
    //   print(phone[i]);
    //   print(officeContact[i]);

    // }    
     return TableInfo(image: images, name: name, designation: designation, department: department, email: email, phone: phone, officeContact: officeContact);         
  }



class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.info});
  
  final Future<TableInfo> info;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info RUET',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 156, 183)),
        useMaterial3: true,
      ),
      home:MyHomePage(title:'RUET Diary', infoTab: info,),//const CseInfo()  //const MyHomePage(title: 'Info Desk'),
    );
  }
}

