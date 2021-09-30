import 'package:flutter/material.dart';
import 'weapon_controller.dart';

class Weapons extends StatelessWidget {
  Weapons({required this.type,required this.onPress});
  final type;
  final void Function()? onPress;

  Color getColor(input){
    if(input == 1)
      return Colors.red;
    if(input == 2)
      return Colors.blue;
    if(input == 3)
      return Colors.grey;
    if(input == 4)
      return Colors.yellowAccent;
    if(input == 5)
      return Colors.lightGreen;
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 20,
      child: CircleAvatar(
        backgroundColor: getColor(type),
        radius: 15,
      ),
      onPressed: onPress,
    );
  }
}
