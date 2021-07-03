import 'package:flutter/material.dart';

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
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 45,
      ),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text(
            buttonTitle,
            style: Theme.of(context).textTheme.button!.copyWith(
                  color: titleColor,
                ),
          ),
        ),
      ),
    );
  }
}
