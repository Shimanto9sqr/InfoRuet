
import 'package:flutter/material.dart';
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
  State<TeachersInfo> createState() => _TeachersInfoState();
}

class _TeachersInfoState extends State<TeachersInfo> {

  @override
  void initState(){
    super.initState();
    
  }

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