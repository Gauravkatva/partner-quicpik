import 'package:flutter/material.dart';
import 'package:partner_quicpik/components/app_clippers.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/components/generic_textfield.dart';
import 'package:partner_quicpik/utils/app_utils.dart';

class ShopDetails extends StatefulWidget {
  const ShopDetails({Key? key}) : super(key: key);

  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {
  final shopNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize(context).height / 3.2,
                  width: screenSize(context).width,
                ),
                ClipPath(
                  clipper: OvalClipper(),
                  child: Container(
                    height: screenSize(context).height / 4,
                    width: screenSize(context).width,
                    color: themeData(context).primaryColor,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenSize(context).width,
                            child: Text(
                              "Please Enter Your Shop Details",
                              style:
                                  Theme.of(context).textTheme.button!.copyWith(
                                        color: Colors.white,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screenSize(context).height / 13,
                  left: 0,
                  child: Image.asset(
                    "assets/shop_details.png",
                    height: screenSize(context).height / 4.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GenericTextField(
                  textEditingController: shopNameController,
                  hintText: "ShopName",
                  prefixIcon: Icon(Icons.ac_unit),
                ),
                GenericTextField(
                  textEditingController: shopNameController,
                  hintText: "ShopName",
                  prefixIcon: Icon(Icons.ac_unit),
                ),
                GenericTextField(
                  textEditingController: shopNameController,
                  hintText: "ShopName",
                  prefixIcon: Icon(Icons.ac_unit),
                ),
                GenericTextField(
                  textEditingController: shopNameController,
                  hintText: "ShopName",
                  prefixIcon: Icon(Icons.ac_unit),
                ),
                GenericTextField(
                  textEditingController: shopNameController,
                  hintText: "ShopName",
                  prefixIcon: Icon(Icons.ac_unit),
                ),
                GenericTextField(
                  textEditingController: shopNameController,
                  hintText: "ShopName",
                  prefixIcon: Icon(Icons.ac_unit),
                ),
                GenericTextField(
                  textEditingController: shopNameController,
                  hintText: "ShopName",
                  prefixIcon: Icon(Icons.ac_unit),
                ),
                AppButton(
                  buttonTitle: "Finish",
                  onPressed: () {},
                  buttonColor: themeData(context).primaryColor,
                  titleColor: Colors.white,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
