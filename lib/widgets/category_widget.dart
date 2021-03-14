import 'package:flutter/material.dart';
/* 
Title: CategoryWidget,
Purpose:CategoryWidget,
Required Parameter:ingredientImg,
Created Date:20 Feb, 2021,
Created By:Kalpesh Khandla
*/

class CategoryWidget extends StatelessWidget {
  final String catImg;
  final Color backColor;
  final Color imgColor;
  final double height;
  final double width;
  final double iconHeight;

  CategoryWidget({
    Key key,
    @required this.catImg,
    @required this.backColor,
    this.imgColor,
    this.height,
    this.width,
    this.iconHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: backColor,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Image.asset(
            catImg,
            height: iconHeight,
            color: imgColor,
          ),
        ),
      ),
    );
  }
}
