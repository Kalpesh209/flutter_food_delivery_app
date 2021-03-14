import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/common/color_constants.dart';
import 'package:google_fonts/google_fonts.dart';


/* 
Title: ItemAddRemoveWidget,
Purpose:ItemAddRemoveWidget,
Required Parameter:ingredientImg,
Created Date:20 Feb, 2021,
Created By:Kalpesh Khandla
*/

class ItemAddRemoveWidget extends StatefulWidget {
  @override
  _ItemAddRemoveWidgetState createState() => _ItemAddRemoveWidgetState();
}

class _ItemAddRemoveWidgetState extends State<ItemAddRemoveWidget> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 38,
      decoration: BoxDecoration(
        color: Color(0xffEAFBF3),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: ColorConstants.kWhiteColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Text(
                  "+",
                  style: GoogleFonts.faustina(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Text(
              amount.toString(),
              style: GoogleFonts.faustina(
                fontWeight: FontWeight.w700,
                color: Colors.grey,
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: ColorConstants.kWhiteColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Text(
                  "-",
                  style: GoogleFonts.faustina(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
