import 'package:flutter/material.dart';

class PhoneNumberTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final Icon? suffixIcon;
  final int? maxLines;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final TextEditingController textEditingController;
  final bool? shouldShowShadow;

  const PhoneNumberTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.maxLines,
    this.focusNode,
    this.textInputType,
    this.shouldShowShadow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 45,
      ),
      height: 50,
      width: double.infinity,
      child: TextFormField(
        controller: textEditingController,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: prefixIcon,
          suffixIcon: InkWell(
            child: suffixIcon,
            onTap: () {
              textEditingController.clear();
            },
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: shouldShowShadow!
            ? [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ]
            : null,
      ),
    );
  }
}
