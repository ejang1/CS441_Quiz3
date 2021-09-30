import 'package:flutter/material.dart';

class ClickHunt extends StatefulWidget {
  const ClickHunt({Key? key}) : super(key: key);

  @override
  _ClickHuntState createState() => _ClickHuntState();
}

class _ClickHuntState extends State<ClickHunt> {

  double sizeDefault = 10;
  int popCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "Click Hunt!"
        ),
      ),
      body: ListView(
        children: <Widget>[
          Text(
              "Pop it!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              height: 2,
            ),
          ),
          Container(
            width: 400,
            height: 400,
            child: MaterialButton(
              onPressed: (){
                setState(() {
                  if(sizeDefault < 190) sizeDefault += 3;
                  else{
                    sizeDefault = 10;
                    popCount ++;
                  }
                });
              },
              child: CustomPaint(
                painter: OpenPainter(sizeDefault),
              ),
            ),
          ),
          Text(
            "POP COUNT:: ${popCount}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              height: 2,
            ),
          ),
          TextButton(
              onPressed: (){
                setState(() {
                  popCount = 0;
                  sizeDefault = 10;
                });
              }, child: Text("RESET!"))
        ],
      )
    );
  }
}

class OpenPainter extends CustomPainter{
  OpenPainter(this.csize);
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