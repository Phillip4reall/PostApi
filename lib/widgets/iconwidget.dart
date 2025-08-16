import 'package:flutter/material.dart';
class Iconwidget extends StatelessWidget {
  IconData? icon;
  String text;
  Function()? ontap;
   Iconwidget({ required this.text,required this.icon, required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [IconButton(onPressed: ontap, icon: Icon(icon,size: 25,color: Colors.white,),),
    Positioned(top: 20,right: 3,
      child: Text(text,style: TextStyle(color: Colors.white),))] );
  }
}