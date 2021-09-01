import 'package:flutter/material.dart';
import 'package:partner_quicpik/utils/app_utils.dart';

class GenderSelector extends StatefulWidget {
  GenderSelector({Key? key, required this.onChanged}) : super(key: key);
  final Function(String) onChanged;
  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  final _list = ["MALE", "FEMALE", "OTHER"];
  int _pointer = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gender",
            style: themeData(context).textTheme.button!.copyWith(
                  color: Colors.white,
                ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: List.generate(_list.length, (index) {
              return Container(
                margin: EdgeInsets.only(right: 10),
                child: Ink(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: index == _pointer
                        ? Colors.white
                        : themeData(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _pointer = index;
                      });
                      widget.onChanged(_list[index]);
                    },
                    child: Center(
                      child: Text(
                        "${_list[index]}",
                        style: themeData(context).textTheme.bodyText1!.copyWith(
                              color: index == _pointer
                                  ? themeData(context).primaryColor
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
