
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:inforuet/model/table_model.dart';

Future<TableInfo> getData(String dept) async { 
    final url = Uri.parse('https://www.$dept.ruet.ac.bd/teacher_list');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);
    //print(html);
    final images = html
          .querySelectorAll('#table_list > tbody > tr> td:nth-child(1) > img')
          .map((element)=> 'https://www.$dept.ruet.ac.bd${element.attributes['src']}')
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

   print('Count: ${images.length}');
    for(int i=0;i<images.length;i++){
      print(images[i]);
      print(name[i]);
      // print(designation[i]);
      // print(department[i]);
      // print(email[i]);
      // print(phone[i]);
      // print(officeContact[i]);

    }    
     return TableInfo(image: images, name: name, designation: designation, department: department, email: email, phone: phone, officeContact: officeContact);         
  }