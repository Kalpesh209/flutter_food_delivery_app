

/* 
Title: RecommandedItemWidget,
Purpose:RecommandedItemWidget,
Required Widget:CategoryWidget,IngredientsWidget,AddToCartWidget
Created Date:20 Feb 2021
Created By:Kalpesh Khandla
*/

import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/widgets/add_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommandedItemWidget extends StatelessWidget {
  final String itemName;
  final String itemAmount;
  final String itemImg;

  RecommandedItemWidget({
    Key key,
    this.itemName,
    this.itemAmount,
    this.itemImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height, width;

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                          itemImg,
                                        ),
                                      ),
                                    )),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      itemName,
                                      style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "\$",
                                          style: GoogleFonts.faustina(
                                            fontSize: 10,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          itemAmount,
                                          style: GoogleFonts.faustina(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: AddButtonWidget(),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
