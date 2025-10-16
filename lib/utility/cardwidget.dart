import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.h,
    required this.w,
    required this.dept,
    required this.onTap,
  });

  final double h;
  final double w;
  final String dept;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0) ,
      
      child: Container(
          height: h,
          width: w,
         decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 170, 231, 244),
                 
                  Color.fromARGB(184, 129, 234, 243),
                  
                ],
              ),
            ),
        child: InkWell(
              splashColor: const Color.fromARGB(255, 156, 221, 227).withAlpha(30),
              onTap: onTap,                     
            child: Center(child: Text('Dept of $dept',
                style: const  TextStyle(
                  fontFamily: 'Workbench',
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
            ),
            ),
        ),
         
      ),
    );
  }
  
}