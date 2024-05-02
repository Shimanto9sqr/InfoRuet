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
    return Container(
      height: h,
      width: w,
      child: Card(
        color: const Color.fromARGB(255, 171, 232, 241),
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