import 'package:dentistry/app/components/button_action_widget.dart';
import 'package:dentistry/app/modules/register_user/register_user_controller.dart';
import 'package:dentistry/app/modules/register_user/register_user_page.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';

class SelectUserPageSender extends StatefulWidget {
  final String title;
  const SelectUserPageSender({Key key, this.title = "RegisterUser"})
      : super(key: key);

  @override
  _SelectUserPageSenderState createState() => _SelectUserPageSenderState();
}

class TimeValue {
  final int _key;
  final String _value;
  TimeValue(this._key, this._value);
}

class _SelectUserPageSenderState
    extends ModularState<SelectUserPageSender, RegisterUserController> {
  int _currentTimeValue = 1; //use 'controller' variable to access controller
  final _buttonOptions = [
    TimeValue(1, "Masculino"),
    TimeValue(2, "Feminino"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(colorThree),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _makeHeader(),
              _makeForm(),
            ],
          ),
        ));
  }

  Widget _makeForm() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, left: 34.0, right: 34.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: SizeUtils.heightScreen,
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: _buttonOptions
                  .map((timeValue) => RadioListTile(
                        groupValue: _currentTimeValue,
                        title: Text(timeValue._value),
                        value: timeValue._key,
                        onChanged: (val) {
                          setState(() {
                            controller.changeGender(val);
                            _currentTimeValue = val;
                            
                          });
                        },
                      ))
                  .toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40.0, bottom: 8.0),
            child: ButtonActionWidget(
              labelText: advance,
              onClick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterUserPage()),
                );
              },
              colorBorder: Color(colorFour),
              colorBackground: Color(colorFour),
              colorText: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _makeHeader() {
    return Container(
        color: Colors.white,
        width: SizeUtils.widthScreen,
        height: (MediaQuery.of(context).size.height * .2) -
            MediaQuery.of(context).padding.top,
        child: Stack(children: <Widget>[
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(top: 25.0, left: 16),
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Get.back();
                  },
                ),
              )),
          Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 25.0),
                child: Text(
                  registerYourself,
                  style: TextStyle(
                      color: Color(colorTen),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ))
        ]));
  }
}
