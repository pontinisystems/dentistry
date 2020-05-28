import 'package:flutter/material.dart';

class ButtonActionWidgetV2 extends StatelessWidget {
  final String labelText;
  final Function() onClick;
  final Color colorBorder;
  final Color colorBackground;
  final Color colorText;
  final bool isDark;
  final double width;
  final double height;
  ButtonActionWidgetV2({
    @required this.isDark,
    Key key,
    this.labelText,
    this.onClick,
    this.colorBorder,
    this.colorBackground,
    this.colorText, this.width, this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _customButton() {
      return Container(
        width: width !=null  ? width :  MediaQuery.of(context).size.width,
        height: height !=null  ? height : 45.0,
        child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: colorBorder)),
          color: colorBackground,
          textColor: colorText,
          padding: EdgeInsets.all(8.0),
          onPressed: onClick,
          child: Text(
            labelText.toUpperCase(),
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
      );
    }


    
      return _customButton();
    
  }
}
