import 'package:flutter/material.dart';

bool isDebugging = true;

void printDebug(value) {
  if (isDebugging) {
    print(value);
  }
}

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}