import 'package:flutter/material.dart';
import 'package:partner_quicpik/utils/app_utils.dart';

enum ButtonState { child, loading }

class AppButton extends StatefulWidget {
  final String buttonTitle;
  final Future<void> Function() onPressed;
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
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  ButtonState _state = ButtonState.child;

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
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: Colors.grey,
          onTap: _state == ButtonState.child
              ? () async {
                  setState(() {
                    _state = ButtonState.loading;
                  });
                  await widget.onPressed();
                  setState(() {
                    _state = ButtonState.child;
                  });
                }
              : null,
          child: Center(
            child: _buildForState(_state, context),
          ),
        ),
      ),
    );
  }

  Widget _buildForState(ButtonState state, BuildContext context) {
    switch (state) {
      case ButtonState.child:
        return Text(
          widget.buttonTitle,
          style: themeData(context).textTheme.button!.copyWith(
                color: widget.titleColor,
              ),
        );
      case ButtonState.loading:
        return CircularProgressIndicator(
          strokeWidth: 5,
        );
      default:
        return Text(
          widget.buttonTitle,
          style: themeData(context).textTheme.button!.copyWith(
                color: widget.titleColor,
              ),
        );
    }
  }
}
