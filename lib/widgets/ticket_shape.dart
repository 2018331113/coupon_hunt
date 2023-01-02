import 'dart:math';

import 'package:flutter/material.dart';

class CouponShape extends StatelessWidget {
  const CouponShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return CustomPaint(
        size: Size(
          constraints.maxWidth,
          constraints.maxWidth * 0.35,
        ), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: RPSCustomPainter(),
      );
    });
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.02, size.height * 0);
    path_0.cubicTo(size.width * 0.001, size.height * 0.01, size.width * 0.0005,
        size.height * 0.07, 0, size.height * 0.1);
    path_0.lineTo(size.width * 0, size.height * 0.35);
    path_0.arcToPoint(
      Offset(size.width * 0, size.height * 0.65),
      radius: Radius.circular(size.height * 0.1),
      rotation: 0,
      largeArc: true,
    );

    path_0.lineTo(size.width * 0, size.height * 0.9);
    path_0.cubicTo(size.width * 0.0005, size.height * 0.93, size.width * 0.0001,
        size.height * 0.99, size.width * 0.02, size.height);

    path_0.lineTo(size.width * 0.98, size.height);
    path_0.cubicTo(size.width * 0.9995, size.height * 0.99, size.width * 0.9999,
        size.height * 0.93, size.width, size.height * 0.9);
    path_0.lineTo(size.width, size.height * 0.65);
    path_0.arcToPoint(
      Offset(size.width, size.height * 0.35),
      radius: Radius.circular(size.height * 0.1),
      rotation: 180,
      largeArc: true,
    );

    path_0.lineTo(size.width, size.height * 0.1);
    path_0.cubicTo(size.width * 0.9999, size.height * 0.07, size.width * 0.9995,
        size.height * 0.01, size.width * 0.98, 0);
    path_0.lineTo(size.width * 0.2, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color =
        Colors.primaries[Random().nextInt(Colors.primaries.length)];

    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
