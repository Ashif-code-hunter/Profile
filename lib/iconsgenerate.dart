

import 'package:flutter/material.dart';

class Iconsgenerate extends StatelessWidget {
  final String imagePath;
  final double width;
  final double borderWidth;
  final String label;
  final Function path;

  Iconsgenerate({this.imagePath,this.width,this.label,this.path,this.borderWidth=0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          SizedBox(height: .35,),
          Container(
            width: width,
            height: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(80.0),
              border: Border.all(
                color: Colors.white,
                width: borderWidth,
              ),
            ),
          ),
          Text(label,
            style:TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xff7D7D7D)
            ),),
        ],
      ),
      onTap: path,
    );
  }
}
