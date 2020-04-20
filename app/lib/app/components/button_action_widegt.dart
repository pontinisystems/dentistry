import 'package:dentistry/app/utils/colors_util.dart';
import 'package:flutter/material.dart';

class ButtonActionWidget extends StatelessWidget {
  final String labelText;
  final Function() onClick;

  ButtonActionWidget({Key key, this.labelText, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
           
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: FlatButton(
              onPressed: onClick,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              color: Color(colorFour),
              child: Stack(
                  children: <Widget>[
                    Text(
                      labelText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                
              ),
            ));
  }
}
