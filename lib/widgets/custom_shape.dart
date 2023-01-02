import 'package:flutter/material.dart';

class CustomShape extends CustomPainter {
  final Color color;

  CustomShape({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1428, 0);
    path_0.cubicTo(
      size.width * 0.01,
      0,
      0,
      size.height * 0.01,
      size.width * 0,
      size.height * 0.1428,
    );
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width * .03, size.height);

    path_0.arcToPoint(
      Offset(size.width * 0.08, size.height),
      radius: Radius.elliptical(size.width * 0.05, size.height * 0.038),
      rotation: 90,
      largeArc: false,
      clockwise: true,
    );

    path_0.lineTo(size.width * 0.13, size.height);
    path_0.arcToPoint(
      Offset(size.width * 0.18, size.height),
      radius: Radius.elliptical(size.width * 0.05, size.height * 0.038),
      rotation: 90,
      largeArc: false,
      clockwise: true,
    );

    path_0.lineTo(size.width * 0.23, size.height);
    path_0.arcToPoint(Offset(size.width * 0.28, size.height),
        radius: Radius.elliptical(size.width * 0.05, size.height * 0.038),
        rotation: 90,
        largeArc: false,
        clockwise: true);

    path_0.lineTo(size.width * 0.33, size.height);
    path_0.arcToPoint(Offset(size.width * 0.38, size.height),
        radius: Radius.elliptical(size.width * 0.05, size.height * 0.038),
        rotation: 90,
        largeArc: false,
        clockwise: true);

    path_0.lineTo(size.width * 0.43, size.height);
    path_0.arcToPoint(Offset(size.width * 0.48, size.height),
        radius: Radius.elliptical(size.width * 0.05, size.height * 0.038),
        rotation: 90,
        largeArc: false,
        clockwise: true);

    path_0.lineTo(size.width * 0.53, size.height);
    path_0.arcToPoint(Offset(size.width * 0.58, size.height),
        radius: Radius.elliptical(size.width * 0.05, size.height * 0.038),
        rotation: 90,
        largeArc: false,
        clockwise: true);

    path_0.lineTo(size.width * 0.63, size.height);
    path_0.arcToPoint(Offset(size.width * 0.68, size.height),
        radius: Radius.elliptical(size.width * 0.05, size.height * 0.038),
        rotation: 90,
        largeArc: false,
        clockwise: true);

    path_0.lineTo(size.width * 0.73, size.height);
    path_0.arcToPoint(Offset(size.width * 0.78, size.height),
        radius: Radius.elliptical(size.width * 0.05, size.height * 0.038),
        rotation: 90,
        largeArc: false,
        clockwise: true);

    path_0.lineTo(size.width * 0.83, size.height);
    path_0.arcToPoint(Offset(size.width * 0.88, size.height),
        radius: Radius.elliptical(size.width * 0.05, size.height * 0.038),
        rotation: 90,
        largeArc: false,
        clockwise: true);

    path_0.lineTo(size.width * 0.93, size.height);
    path_0.arcToPoint(Offset(size.width * 0.98, size.height),
        radius: Radius.elliptical(size.width * 0.05, size.height * 0.038),
        rotation: 90,
        largeArc: false,
        clockwise: true);

    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, size.height * 0.1428);
    path_0.cubicTo(
      size.width,
      0,
      size.width,
      size.height * 0.0,
      size.width * 0.851742,
      0,
    );
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
