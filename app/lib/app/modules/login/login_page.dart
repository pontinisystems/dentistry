import 'package:dentistry/app/components/button_action_widegt_v2.dart';
import 'package:dentistry/app/components/text_field_widget.dart';
import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/mixins/loader_mixin.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:dentistry/app/utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController>
    with LoaderMixin {
  List<ReactionDisposer> _disposer;

  @override
  void dispose() {
    _disposer.forEach((dispose) => dispose());
    super.dispose();
  }

 @override
  void initState() {
    super.initState();
    _disposer ??= [
      reaction((_) => controller.state, (StoreState state) {
        if (state == StoreState.loading) {
          showLoader();
          // Chamar um loading
        } else if (state == StoreState.loaded) {
          // esconder o loading
          print("gravou");
          hideLoader();
        }else if(state == StoreState.error){
          print('error');
           hideLoader();
        }
      }),
   
      reaction((_) => controller.loginSuccess, (sucess) {
        print(sucess);
        if (sucess != null) {
          if (sucess) {
             Get.offAllNamed('/dashboard');
            print('logado com sucesso');
            
          } else {
            print('erroraaaaaaaa');
          
          }
        }
      }),
      reaction((_) => controller.errorMessage, (Message errorMessage) {
            print('errroraa'+errorMessage.description);

        if(errorMessage.description.isNotEmpty) {
          // esconder o loading
          print('aaaaa');
          Get.snackbar(errorMessage.title, errorMessage.description, backgroundColor: Colors.white, colorText: Colors.redAccent);
         // hideLoader();
        }
      })
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(colorThree),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _makeHeader(),
              TextFieldWidget(
                labelText: 'Email ou telefone',
                onChanged: controller.changeLogin,
              ),
              TextFieldWidget(
                labelText: 'Senha',
                obscureText: true,
                onChanged: controller.changePassword,
              ),
              _text('Forget Password'),
              Container(
                margin: EdgeInsets.only(
                    left: 30.0, right: 30.0, bottom: 15.0, top: 5.0),
                child: ButtonActionWidgetV2(
                  labelText: 'Login',
                  onClick: controller.requestLogin,
                  colorBorder: Color(colorFour),
                  colorBackground: Color(colorFour),
                  colorText: Colors.white,
                  isDark: false,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 30.0, right: 30.0, bottom: 15.0, top: 5.0),
                child: ButtonActionWidgetV2(
                  labelText: registerYourself,
                  onClick: () {
                    Get.toNamed('/login/register');
                  },
                  colorBorder: Color(colorFour),
                  colorBackground: Colors.white,
                  colorText: Color(colorFour),
                  isDark: false,
                ),
              ),
            ],
          ),
        ));
  }

  Widget _makeHeader() {
    return Container(
      color:Color(colorThree),
      width: SizeUtils.widthScreen,
      height: (MediaQuery.of(context).size.height * .5) -
          MediaQuery.of(context).padding.top -
          45.0,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 40.0,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 60.0, //Tamnho
              child: SvgPicture.asset('assets/images/logo.svg'),
            ),
          )
        ],
      ),
    );
  }

  Container _text(String text, {Color color}) {
    return Container(
      margin: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0, top: 10.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: color != null ? color : Color(colorFour)),
        ),
      ),
    );
  }
}
