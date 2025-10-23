import 'package:flutter/material.dart';

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    final p0 = size.height / 2;
    path.lineTo(0.0, p0);
    final controlPoint = Offset(size.width * 0.4, size.height - 50);
    final endPoint = Offset(size.width, size.height / 2);
    path.quadraticBezierTo(
      controlPoint.dx,
      controlPoint.dy,
      endPoint.dx,
      endPoint.dy,
    );
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(AppBarClipper oldClipper) => oldClipper != this;
}

class BottomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    final p0 = size.height / 2;
    path.lineTo(0.0, p0);
    final controlPoint = Offset(size.width * 0.4, size.height - 50);
    final endPoint = Offset(size.width, size.height / 2);
    path.quadraticBezierTo(
      controlPoint.dx,
      controlPoint.dy,
      endPoint.dx,
      endPoint.dy,
    );
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(AppBarClipper oldClipper) => oldClipper != this;
}
