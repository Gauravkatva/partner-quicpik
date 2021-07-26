import 'package:flutter/material.dart';
import 'package:partner_quicpik/utils/app_utils.dart';

class AppButton extends StatelessWidget {
  final String buttonTitle;
  final void Function() onPressed;
  final Color buttonColor;
  final Color titleColor;
  const AppButton(
      {Key? key,
      required this.buttonTitle,
      required this.onPressed,
      required this.buttonColor,
      required this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 30,
      ),
      child: Ink(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: Colors.grey,
          onTap: onPressed,
          child: Center(
            child: Text(
              buttonTitle,
              style: themeData(context).textTheme.button!.copyWith(
                    color: titleColor,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
