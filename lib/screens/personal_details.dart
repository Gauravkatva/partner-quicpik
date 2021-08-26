import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:partner_quicpik/components/app_clippers.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/components/gender_selector.dart';
import 'package:partner_quicpik/components/generic_textfield.dart';
import 'package:partner_quicpik/utils/app_utils.dart';
import 'package:partner_quicpik/utils/routes.dart';

class PersonalDetails extends StatelessWidget {
  PersonalDetails({Key? key}) : super(key: key);
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  String genderContoller = "MALE";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: themeData(context).primaryColor),
      ),
      backgroundColor: themeData(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize(context).height / 3,
                  width: screenSize(context).width,
                ),
                ClipPath(
                  clipper: OvalClipper(),
                  child: Container(
                    height: screenSize(context).height / 4,
                    width: screenSize(context).width,
                    color: Colors.white,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 250,
                            child: Text(
                              "Shop Registration",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: themeData(context).primaryColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screenSize(context).height / 9,
                  left: (screenSize(context).width / 2) - 100,
                  child: SvgPicture.asset(
                    "assets/personal_details.svg",
                    height: screenSize(context).height / 3,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: screenSize(context).height -
                  (screenSize(context).height / 2.3),
              margin: EdgeInsets.only(
                top: 25,
              ),
              padding: EdgeInsets.only(
                top: 25,
              ),
              child: Column(
                children: [
                  GenericTextField(
                    textEditingController: fullNameController,
                    hintText: "Full Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                  GenericTextField(
                    textEditingController: emailController,
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                  GenericTextField(
                    textEditingController: ageController,
                    hintText: "Age",
                    prefixIcon: Icon(Icons.card_giftcard),
                  ),
                  GenderSelector(
                    onChanged: (value) {
                      genderContoller = value;
                    },
                  ),
                  AppButton(
                    buttonTitle: "Next",
                    onPressed: () {
                      openScreen(context, Routes.shopDetailRoute);
                    },
                    buttonColor: Colors.white,
                    titleColor: themeData(context).primaryColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
