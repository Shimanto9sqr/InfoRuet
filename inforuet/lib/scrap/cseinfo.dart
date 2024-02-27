
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

class CseInfo extends StatefulWidget {
  const CseInfo({super.key});

  @override
  State<CseInfo> createState() => _CseInfoState();
}

class _CseInfoState extends State<CseInfo> {
  
  @override
  void initState(){
    super.initState();
    getCseDate();
  }

  getCseDate() async {   final url = Uri.parse('https://www.cse.ruet.ac.bd/teacher_list');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);
    
    //#table_list > tbody > tr:nth-child(1)
    //#table_list > tbody > tr:nth-child(1)
    //#table_list > tbody > tr> td > a -name
    //#table_list > tbody > tr> td:nth-child(7) - Designation
    //#table_list > tbody > tr:nth-child(1) > td:nth-child(7)
    //#table_list > tbody > tr:nth-child(1) > td:nth-child(2)
    //#table_list > tbody > tr > td:nth-child(1) -image
    final titles = html
          .querySelectorAll('#table_list > tbody > tr> td:nth-child(1) > img')
          .map((element)=> 'https://www.cse.ruet.ac.bd${element.attributes['src']}')
          .toList();

    print('Count: ${titles.length}');
    for(int i=0;i<titles.length;i++){
      print(titles[i]);
    }    
              
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}