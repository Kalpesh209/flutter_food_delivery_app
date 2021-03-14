import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/common/color_constants.dart';
import 'package:food_delivery_app_ui/widgets/add_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';


/* 
Title: ItemWidget,
Purpose:ItemWidget,
Required Parameter: N/A,
Created Date:20 Feb, 2021
Created By:Kalpesh Khandla
*/

class ItemWidget extends StatelessWidget {
  final String itemImg;
  final String itemName;
  final String itemDescription;
  final String itemAmount;

  ItemWidget({
    Key key,
    @required this.itemImg,
    @required this.itemName,
    @required this.itemDescription,
    @required this.itemAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height, width;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            height: height * .5,
            width: width * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  itemName,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: ColorConstants.kBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  itemDescription,
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "\$",
                      style: GoogleFonts.faustina(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      itemAmount,
                      style: GoogleFonts.faustina(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: -50,
          child: Padding(
            padding: const EdgeInsets.only(left: 27),
            child: Container(
              height: height * .38,
              width: width * .65,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(itemImg),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          right: 4,
          child: AddButtonWidget(),
        )
      ],
    );
  }
}
