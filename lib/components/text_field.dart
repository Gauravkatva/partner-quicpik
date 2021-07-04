import 'package:flutter/material.dart';

class AddTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final Icon? suffixIcon;
  final int? maxLines;
  final FocusNode? focusNode;
  final TextInputType? textInputType;

  const AddTextField(
      {Key? key,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon,
      this.maxLines,
      this.focusNode,
      this.textInputType})
      : super(key: key);

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
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.blue,
          ),
          border: InputBorder.none,
          prefixIcon: prefixIcon,
          suffixIcon: InkWell(
            child: suffixIcon,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
    );
  }
}
