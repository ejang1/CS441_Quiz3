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
    var paint3 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = csize*0.1
      ..strokeCap = StrokeCap.round;
    canvas.drawCircle(Offset(0,0), csize, paint1);
    canvas.drawRect(Rect.fromCenter(center: Offset(0+csize/2,0-csize/2), width: csize*0.8, height: csize*0.8), paint1);
    canvas.drawRect(Rect.fromCenter(center: Offset(0-csize/2,0-csize/2), width: csize*0.8, height: csize*0.8), paint1);
    canvas.drawCircle(Offset(0+csize/3,0-csize/3), 2+csize/10, paint2);
    canvas.drawCircle(Offset(0-csize/3,0-csize/3), 2+csize/10, paint2);

    Path path = Path();
    path.moveTo(size.width/2-csize/3,size.height/2+csize/2);
    //path.quadraticBezierTo(0, csize*0.2, size.width/2+csize/3, size.height/2+csize/2);
     path.lineTo(0,csize*0.2);
     path.lineTo(size.width/2+csize/3,size.height/2+csize/2);
    //path.close();
    canvas.drawPath(path, paint3);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}