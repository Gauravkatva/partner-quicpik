import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:partner_quicpik/components/app_clippers.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/components/generic_textfield.dart';
import 'package:partner_quicpik/utils/app_utils.dart';
import 'package:partner_quicpik/utils/routes.dart';

class ShopDetails extends StatefulWidget {
  const ShopDetails({Key? key}) : super(key: key);

  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {
  final shopNameController = TextEditingController();
  final categoryController = TextEditingController();
  final shopNumberController = TextEditingController();
  final landMarkController = TextEditingController();
  final areaController = TextEditingController();
  final cityController = TextEditingController();
  final pincodeController = TextEditingController();
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
                  child: SvgPicture.asset(
                    "assets/shop_details.svg",
                    height: screenSize(context).height / 4.5,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GenericTextField(
                  textEditingController: shopNameController,
                  hintText: "Shop Name",
                  prefixIcon: Icon(Icons.shop),
                ),
                GenericTextField(
                  textEditingController: shopNumberController,
                  hintText: "Complex / Shop Number",
                  prefixIcon: Icon(Icons.house),
                ),
                GenericTextField(
                  textEditingController: landMarkController,
                  hintText: "Landmark",
                  prefixIcon: Icon(Icons.account_balance),
                ),
                GenericTextField(
                  textEditingController: areaController,
                  hintText: "Area",
                  prefixIcon: Icon(Icons.location_on),
                ),
                GenericTextField(
                  textEditingController: cityController,
                  hintText: "City",
                  prefixIcon: Icon(Icons.location_city),
                ),
                GenericTextField(
                  textEditingController: pincodeController,
                  hintText: "Pincode",
                  prefixIcon: Icon(Icons.pin),
                ),
                AppButton(
                  buttonTitle: "Finish",
                  onPressed: () {
                    openScreen(context, Routes.carouselRoute);
                  },
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
