import 'package:flutter/material.dart';
import 'package:partner_quicpik/screens/onboarding.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Onboarding(),
    );
  }
}
