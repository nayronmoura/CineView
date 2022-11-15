import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));

    paint.color = const Color.fromRGBO(43, 43, 44, 1);
    canvas.drawPath(mainBackground, paint);

    Path curve = Path();
    curve.lineTo(0, size.height / 5.25);

    var firstControlPoint = Offset(size.width / 5, size.height / 3);
    var firstEndPoint = Offset(size.width / 2, size.height / 3 - 40);
    var secondControlPoint = Offset(size.width - (size.width / 5), size.height / 4 - 45);
    var secondEndPoint = Offset(size.width, size.height / 3 - 50);

    curve.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    curve.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    paint.color = const Color.fromRGBO(18, 18, 18, 1);

    curve.lineTo(size.width, size.height / 3);
    curve.lineTo(size.width, 0);
    canvas.drawPath(curve, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}