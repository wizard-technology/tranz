import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/theme_service.dart';
import '../utils/extentions.dart';

// ignore: must_be_immutable
class ButtonCategoryComponent extends StatefulWidget {
  final text;
  final onPress;
  final height;
  var isSelected;

  ButtonCategoryComponent({
    Key? key,
    required String? this.text,
    required bool? this.isSelected,
    required GestureTapCallback? this.onPress,
    double? this.height,
  }) : super(key: key);

  @override
  _ButtonCategoryComponentState createState() =>
      _ButtonCategoryComponentState();
}

class _ButtonCategoryComponentState extends State<ButtonCategoryComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Material(
        borderRadius: BorderRadius.circular(100),
        color: widget.isSelected
            ? Theme.of(context).primaryColor
            : ThemeService().isSavedDarkMode()
                ? Colors.white
                : Theme.of(context).accentColor,
        child: InkWell(
          onTap: widget.onPress,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: widget.height ?? 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${widget.text}',
                    style: TextStyle(
                      fontFamily: 'language.rtl'.tr.parseBool ? "Rabar" : "",
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
