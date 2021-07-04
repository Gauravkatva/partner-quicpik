import 'package:flutter/material.dart';

class OvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    //clipper code

    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        (size.width / 2) - 20, size.height + 40, size.width, size.height - 150);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
