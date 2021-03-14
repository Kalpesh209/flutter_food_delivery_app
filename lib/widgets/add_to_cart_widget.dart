import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



/* 
Title: AddToCartWidget,
Purpose:AddToCartWidget,
Required Parameter:ingredientImg,
Created Date:20 Feb, 2021,
Created By:Kalpesh Khandla
*/

class AddToCartWidget extends StatelessWidget {
  final String amount;
  final Function onTap;

  AddToCartWidget({
    Key key,
    this.amount,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFF76D1B2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      "\$",
                      style: GoogleFonts.faustina(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      amount,
                      style: GoogleFonts.faustina(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Add to cart",
                style: GoogleFonts.faustina(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              )
            ],
          )),
    );
  }
}
