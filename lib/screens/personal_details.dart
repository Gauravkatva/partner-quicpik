import 'package:flutter/material.dart';
import 'package:partner_quicpik/components/app_clippers.dart';
import 'package:partner_quicpik/utils/app_utils.dart';

class PersonalDetails extends StatelessWidget {
  PersonalDetails({Key? key}) : super(key: key);
  final phoneNumberController = TextEditingController();
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
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 175,
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
                  child: Image.asset(
                    "assets/personal_details.png",
                    height: screenSize(context).height / 3,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sign In with OTP",
                    style: themeData(context).textTheme.headline6!.copyWith(
                          color: themeData(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
