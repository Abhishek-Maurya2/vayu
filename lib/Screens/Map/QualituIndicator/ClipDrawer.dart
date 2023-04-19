import 'package:flutter/cupertino.dart';

class CustomClipPath extends CustomClipper<Path> {
  var radiout = 5.0;
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width, size.height - 22)
      ..lineTo(size.width / 2.00 + 20, size.height - 20.0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width / 2.00 - 20, size.height - 20.0)
      ..lineTo(0, size.height - 22)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
