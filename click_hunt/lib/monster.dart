import 'package:flutter/material.dart';
import 'constant.dart';
class Monster extends CustomPainter{
  Monster(this.csize,this.mcolor);
  double csize;
  Color mcolor;
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint1 = Paint()
      ..color = mcolor
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(0,0), csize, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}