
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:inforuet/model/csemodel.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
class CseInfo extends StatefulWidget {
  const CseInfo({super.key});

  @override
  State<CseInfo> createState() => _CseInfoState();
}

class _CseInfoState extends State<CseInfo> {
  late Future<TableInfo> cseTabInfo;

  @override
  void initState(){
    super.initState();
    initialization();
    cseTabInfo=getCseDate();
  }
   void initialization() async {
   
    
    await Future.delayed(const Duration(seconds:1));
   
    FlutterNativeSplash.remove();
  }

  Future<TableInfo> getCseDate() async { 
    final url = Uri.parse('https://www.cse.ruet.ac.bd/teacher_list');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);
    print(html);
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

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
           appBar: AppBar(
            title: const Text("Show Photo"),
            centerTitle: true,
            backgroundColor: Colors.cyan,
           ),
           body: Center(
            child: FutureBuilder<TableInfo>(future: getCseDate(), builder: ((context,snapshot){
              if(snapshot.hasData){
                 return ListView.builder(itemBuilder: (context,index){
                   
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ExpansionTileCard(
                        leading: Image.network(snapshot.data!.image[index]),
                        title: Text(snapshot.data!.name[index]),
                        subtitle: Text(snapshot.data!.designation[index]),
                        trailing: Text('Department of ${snapshot.data!.department[index]}'),
                        elevationCurve: Curves.bounceIn,
                        initialElevation: 5.0,
                        expandedColor: Color.fromARGB(240, 168, 223, 237),
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(snapshot.data!.phone[index]),
                              const Divider(
                                height: 5.0,
                                thickness: 2.0,
                                color: Color.fromARGB(1, 77, 76, 76),
                              ),
                              Text(snapshot.data!.email[index]),
                            ],
                          ),
                         const  Divider(
                            height: 1.0,
                            thickness: 1.0,
                          ),
                         Container(
                          child: Text(snapshot.data!.officeContact[index]),
                         ) 
                        ],
                        
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