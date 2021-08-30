import 'package:flutter/material.dart';

bool isDebugging = true;
String baseUrl = "https://quick-pick-app.herokuapp.com/api";
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
