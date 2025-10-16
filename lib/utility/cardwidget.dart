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
           color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20)),

            ),
        child: InkWell(
              splashColor: const Color.fromARGB(255, 11, 11, 11).withAlpha(30),
              onTap: onTap,                     
            child: Center(child: Text('Dept of $dept',
                style: const  TextStyle(
                  color: Colors.white,
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