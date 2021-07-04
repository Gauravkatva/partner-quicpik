import 'package:flutter/material.dart';
import 'package:partner_quicpik/components/app_clippers.dart';
import 'package:partner_quicpik/components/button.dart';
import 'package:partner_quicpik/components/text_field.dart';
import 'package:partner_quicpik/utils/app_utils.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize(context).height / 1.9,
                  width: screenSize(context).width,
                ),
                ClipPath(
                  clipper: OvalClipper(),
                  child: Container(
                    height: screenSize(context).height / 2.5,
                    width: screenSize(context).width,
                    color: themeData(context).primaryColor,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            child: Text(
                              "Create Account",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          Text(
                            "Please Sign up to continue",
                            style: themeData(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: screenSize(context).height / 5.5,
                  left: 0,
                  child: Image.asset("assets/sign_up.png"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up with OTP",
                    style: themeData(context).textTheme.headline6!.copyWith(
                          color: themeData(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  AddTextField(
                    hintText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(
                      Icons.clear,
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(
                  //     vertical: 10,
                  //     horizontal: 45,
                  //   ),
                  //   height: 50,
                  //   width: double.infinity,
                  //   child: TextFormField(
                  //     keyboardType: TextInputType.number,
                  //     decoration: InputDecoration(
                  //       hintText: "xyz",
                  //       border: InputBorder.none,
                  //       prefixIcon: Icon(Icons.phone),
                  //       suffixIcon: InkWell(
                  //         child: Icon(Icons.clear),
                  //       ),
                  //     ),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(10),
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey,
                  //         offset: Offset(0.0, 1.0), //(x,y)
                  //         blurRadius: 6.0,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  AppButton(
                      buttonTitle: "Sign Up",
                      onPressed: () {},
                      buttonColor: themeData(context).primaryColor,
                      titleColor: Colors.white),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Already have an account? Sign In",
                      style: themeData(context).textTheme.bodyText1!.copyWith(
                            color: themeData(context).primaryColor,
                          ),
                    ),
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
