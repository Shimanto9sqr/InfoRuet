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
      decoration: const BoxDecoration(
        boxShadow:  [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 0.5,
            blurRadius: 0.5,
            offset: Offset(2, 4)
          )
        ]
      ),
      child: Card(
        elevation: 10.0,
        color: const Color.fromARGB(255, 171, 232, 241),
        child: InkWell(
              splashColor: const Color.fromARGB(255, 156, 221, 227).withAlpha(30),
              onTap: onTap,                     
            child: Center(child: Text('Dept of $dept',
                style: const TextStyle(
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