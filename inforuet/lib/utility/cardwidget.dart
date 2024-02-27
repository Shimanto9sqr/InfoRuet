import 'package:flutter/material.dart';
import 'package:inforuet/UI/facultyinfopage.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.h,
    required this.w,
    required this.dept,
  });

  final double h;
  final double w;
  final String dept;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge, 
      elevation: 10,
      shadowColor: Color.fromARGB(130, 148, 235, 235),
      child: InkWell(
        onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const FacultyInfo()),
            );
        },
        child:  SizedBox(
          height: h/5,
          width: w/2.3,
          child:  Center(
            child:  Text('Dept. of $dept',
            style: const TextStyle(
              fontSize: 25,
              
            ),
            ),
          ),
        ),
      ),
      
    );
  }
}