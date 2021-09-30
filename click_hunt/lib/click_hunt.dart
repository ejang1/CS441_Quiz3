import 'dart:math';
import 'package:click_hunt/constant.dart';
import 'package:flutter/material.dart';
import 'monster.dart';
import 'weapons.dart';
import 'weapon_controller.dart';
class ClickHunt extends StatefulWidget {
  const ClickHunt({Key? key}) : super(key: key);

  @override
  _ClickHuntState createState() => _ClickHuntState();
}

class _ClickHuntState extends State<ClickHunt> {
  double sizeDefault = 10;
  double rightWeapon = 10;
  double wrongWeapon = 1;
  int popCount = 0;
  WeaponController wps = new WeaponController("none");
  var rnd = new Random().nextInt(5);
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
              "Touch to Hunt!",
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
                  if(sizeDefault < 190) sizeDefault += rightWeapon;
                  else{
                    sizeDefault = 10;
                    popCount ++;
                    rnd = new Random().nextInt(5);
                  }
                });
              },
              child: CustomPaint(
                painter: Monster(sizeDefault,weaponKinds[rnd]),
              ),
            ),
          ),
          Text(
            "HUNT COUNT:: ${popCount}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              height: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Current Weapon:: ${wps.weapontype}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              height: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Weapons(
                type: 1,
                onPress: (){
                  setState(() {
                    wps.weapontype="fire";
                  });
                },
              ),
              Weapons(
                type: 2,
                onPress: (){
                  setState(() {
                    wps.weapontype="water";
                  });
                },
              ),
              Weapons(
                type: 3,
                onPress: (){
                  setState(() {
                    wps.weapontype="rock";
                  });
                },
              ),
              Weapons(
                type: 4,
                onPress: (){
                  setState(() {
                    wps.weapontype="thunder";
                  });
                },
              ),
              Weapons(
                type: 5,
                onPress: (){
                  setState(() {
                    wps.weapontype="leaf";
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: (){
                setState(() {
                  popCount = 0;
                  sizeDefault = 10;
                  wps.weapontype = "none";
                });
              }, child: Text("RESET!"))
        ],
      )
    );
  }
}