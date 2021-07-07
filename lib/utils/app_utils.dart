import 'package:flutter/material.dart';
import 'package:partner_quicpik/screens/carosel_screens.dart';

bool isDebugging = true;

void printDebug(value) {
  if (isDebugging) {
    print(value);
  }
}

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

ThemeData themeData(BuildContext context) {
  return Theme.of(context);
}

void openScreen(BuildContext context, String route,
    {bool shouldReplace = false}) {
  if (shouldReplace == true) {
    Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
  } else {
    Navigator.pushNamed(context, route);
  }
}

void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        content,
        style: themeData(context).textTheme.button!.copyWith(
              color: Colors.white,
            ),
      ),
    ),
  );
}
