import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:dentistry/app/components/button_action_widget.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'register_patient_controller.dart';

class RegisterPatientPage extends StatefulWidget {
  final String title;
  const RegisterPatientPage({Key key, this.title = "RegisterPatient"})
      : super(key: key);

  @override
  _RegisterPatientPageState createState() => _RegisterPatientPageState();
}

class _RegisterPatientPageState
    extends ModularState<RegisterPatientPage, RegisterPatientController> {
  //use 'controller' variable to access controller

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
          Observer(builder: (_) {
            return Container(
              margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: _textField(
                labelText: fullName,
                maxLenght: 50,
              ),
            );
          }),
          Observer(builder: (_) {
            return _textField(
              labelText: email,
              maxLenght: 50,
            );
          }),
          Observer(builder: (_) {
            return _textField(
              labelText: phoneNumber,
              maxLenght: 11,
              keyBoardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            );
          }),
          Observer(builder: (_) {
            return Container(
              margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: DateTimeField(
                onChanged: (date) {
                  //  controller.changeDateOfBirth(date.toString());
                },
                decoration: InputDecoration(
                  counterText: '',
                  labelText: dateOfBirth,
                ),
                format: DateFormat("dd/MM/yyyy"),
                onShowPicker: (context, currentValue) {
                  return showDatePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      initialDate: currentValue ?? DateTime.now(),
                      lastDate: DateTime.now());
                },
              ),
            );
          }),

           _makeGender(),
       
          Container(
            margin: EdgeInsets.only(top: 40.0, bottom: 8.0),
            child: ButtonActionWidget(
              labelText: register,
              onClick: controller.registerPatient,
              colorBorder: Color(colorFour),
              colorBackground: Color(colorFour),
              colorText: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  TextField _textField({
    String labelText,
    bool obscure,
    Function() errorText,
    @required maxLenght,
    @required onChanged,
    @required inputFormatters,
    @required TextInputType keyBoardType,
  }) {
    return TextField(
        keyboardType: keyBoardType,
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        maxLength: maxLenght == null ? 0 : maxLenght,
        obscureText: obscure == null ? false : obscure,
        decoration: InputDecoration(
            counterText: '',
            labelText: labelText,
            errorText: errorText == null ? null : errorText()));
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
                  icon: Icon(Icons.chevron_left),
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
                  register_patient,
                  style: TextStyle(
                      color: Color(colorTen),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ))
        ]));
  }

  Widget _makeGender() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
          Observer(builder: (_) {
            
            return   Container(
          margin: EdgeInsets.only(top: 40.0, bottom: 8.0),
          child: ButtonActionWidget(
            width: 120.0,
            labelText: male,
            onClick: () {
              controller.onChangeGender(SelectGender.Male);
            },
            colorBorder: controller.selectGender == SelectGender.Male
                ? Color(color_blue_zodiac)
                : Color(colorThree),
            colorBackground: controller.selectGender == SelectGender.Male
                ? Colors.white
                : Color(colorThree),
            colorText: controller.selectGender == SelectGender.Male
                ? Color(color_blue_zodiac)
                : Color(color_blue_zodiac),
          ),
        );
          }),
      
        SizedBox(
          width: 20.0,
        ),
         Observer(builder: (_) {
            return Container(
          margin: EdgeInsets.only(top: 40.0, bottom: 8.0),
          child: ButtonActionWidget(
            width: 120.0,
            labelText: female,
            onClick: () {
                controller.onChangeGender(SelectGender.Female);
            },
            colorBorder: controller.selectGender == SelectGender.Female
                ? Color(color_blue_zodiac)
                : Color(colorThree),
            colorBackground: controller.selectGender == SelectGender.Female
                ? Colors.white
                : Color(colorThree),
            colorText: controller.selectGender == SelectGender.Female
                ? Color(color_blue_zodiac)
                : Color(color_blue_zodiac),
          ),
        );
         })
      ],
    );
  }
}
