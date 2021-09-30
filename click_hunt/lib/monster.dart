import 'package:flutter/material.dart';
class Monster extends CustomPainter{
  Monster(this.csize);
  double csize;
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint1 = Paint()
      ..color = Color(0xff63aa65)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(0,0), csize, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}