import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class CustomTile extends StatefulWidget {
  const CustomTile({
    super.key,
    required this.img,
    required this.what,
    required this.desc,
    required this.phone,
  });

  final String img;
  final String what;
  final String desc;
  final String phone;

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
            height: 100,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 170, 231, 244),
                    Color.fromARGB(255, 153, 238, 212),
                    Color.fromARGB(185, 4, 221, 241),
                    
                  ],
                ),
              ),
              child: Center(
                child: ListTile(
                  leading: Image.asset(widget.img),
                  title: Text(widget.what,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  subtitle: Text(widget.desc) ,
                  trailing: IconButton(
                          onPressed: ()async{
                            final Uri url = Uri(
                              scheme: 'tel',
                              path: widget.phone,
                            );
                            if(await canLaunchUrl(url)){
                              await launchUrl(url);
                            } else{
                              print('can not launch this url');
                            }
                          },
                          icon: const Icon(Icons.telegram,
                          size: 50,
                          ), 
                          ),
                          
                          ),
                ),
              ), 
      );
    
  }
}