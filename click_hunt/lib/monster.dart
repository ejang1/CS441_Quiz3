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
    var paint2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(0,0), csize, paint1);
    canvas.drawRect(Rect.fromCenter(center: Offset(0+csize/2,0-csize/2), width: csize*0.8, height: csize*0.8), paint1);
    canvas.drawRect(Rect.fromCenter(center: Offset(0-csize/2,0-csize/2), width: csize*0.8, height: csize*0.8), paint1);
    canvas.drawCircle(Offset(0+csize/3,0-csize/3), 2+csize/10, paint2);
    canvas.drawCircle(Offset(0-csize/3,0-csize/3), 2+csize/10, paint2);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}