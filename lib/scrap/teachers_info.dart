
import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:http/http.dart' as http;
// import 'package:html/dom.dart' as dom;
import 'package:inforuet/model/table_model.dart';
import 'package:inforuet/utility/single_page.dart';
import 'package:inforuet/utility/tableinfo_card.dart';
class TeachersInfo extends StatefulWidget {
   const TeachersInfo({super.key,
  required this.teachersTabinfo,
  required this.deptName,
  });

  final Future<TableInfo>teachersTabinfo;
  final String deptName;

  @override
  State<TeachersInfo> createState() => _CseInfoState();
}

class _CseInfoState extends State<TeachersInfo> {
   //late Future<TableInfo> cseTabInfo;
   
   

  @override
  void initState(){
    super.initState();
    // initialization();
    
  }
  //  void initialization() async {
   
    
  //   await Future.delayed(const Duration(seconds:1));
   
  //   FlutterNativeSplash.remove();
  // }

  // Future<TableInfo> getCseDate() async { 
  //   final url = Uri.parse('https://www.cse.ruet.ac.bd/teacher_list');
  //   final response = await http.get(url);
  //   dom.Document html = dom.Document.html(response.body);
  //   print(html);
  //   final images = html
  //         .querySelectorAll('#table_list > tbody > tr> td:nth-child(1) > img')
  //         .map((element)=> 'https://www.cse.ruet.ac.bd${element.attributes['src']}')
  //         .toList();
  //   final name = html
  //         .querySelectorAll('#table_list > tbody > tr> td:nth-child(3)> a').map((element) => element.innerHtml.trim())
  //         .toList();
  //   final designation = html
  //         .querySelectorAll('#table_list > tbody > tr> td:nth-child(7)').map((element) => element.innerHtml.trim())
  //         .toList();
  //   final department = html
  //         .querySelectorAll('#table_list > tbody > tr> td:nth-child(9)').map((element) => element.innerHtml.trim())
  //         .toList();
  //   final email = html
  //         .querySelectorAll('#table_list > tbody > tr> td:nth-child(11)').map((element) => element.innerHtml.trim())
  //         .toList();
  //   final phone = html
  //         .querySelectorAll('#table_list > tbody > tr> td:nth-child(13)').map((element) => element.innerHtml.trim())
  //         .toList();
  //   final officeContact = html
  //         .querySelectorAll('#table_list > tbody > tr> td:nth-child(15)').map((element) => element.innerHtml.trim())
  //         .toList();           

  //  // print('Count: ${images.length}');
  //   // for(int i=0;i<images.length;i++){
  //   //   print(images[i]);
  //   //   print(name[i]);
  //   //   print(designation[i]);
  //   //   print(department[i]);
  //   //   print(email[i]);
  //   //   print(phone[i]);
  //   //   print(officeContact[i]);

  //   // }    
  //    return TableInfo(image: images, name: name, designation: designation, department: department, email: email, phone: phone, officeContact: officeContact);         
  // }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
           appBar: AppBar(
            title:Text("${widget.deptName} Faculty Info",
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Workbench'
            ),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 14, 14, 14),
           ),
           body: Center(
            child: FutureBuilder<TableInfo>(future: widget.teachersTabinfo , builder: ((context,snapshot){
              if(snapshot.hasData){
                 return ListView.builder(itemBuilder: (context,index){
                   
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TableInfoCard(
                        image: snapshot.data!.image[index],
                        name: snapshot.data!.name[index],
                        designation: snapshot.data!.designation[index], 
                        department: snapshot.data!.department[index], 
                        email:snapshot.data!.email[index].isEmpty?'N/A':snapshot.data!.email[index], 
                        phone: snapshot.data!.phone[index].isEmpty?'N/A':snapshot.data!.phone[index], 
                        officeContact: snapshot.data!.officeContact[index].isEmpty?'N/A':snapshot.data!.officeContact[index],
                        singlePage: SinglePage(
                        image:snapshot.data!.image[index] ,
                        name:snapshot.data!.name[index],
                        designation: snapshot.data!.designation[index],
                        department: snapshot.data!.department[index], 
                        email:snapshot.data!.email[index].isEmpty?'N/A':snapshot.data!.email[index],
                        phone: snapshot.data!.phone[index].isEmpty?'N/A':snapshot.data!.phone[index],
                        officeContact: snapshot.data!.officeContact[index].isEmpty?'N/A':snapshot.data!.officeContact[index],
                        ),
                        ),
                      
                );
                 },
                 itemCount: snapshot.data!.image.length,
                 );
                  
                
              }else if(snapshot.hasError){
                return Text('ERROR: ${snapshot.error}');
              }

              return const CircularProgressIndicator();

            }),  )
           ),
    );
  }
}