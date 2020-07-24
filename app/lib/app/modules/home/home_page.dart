import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/mixins/loader_mixin.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController>
    with LoaderMixin {
  //use 'controller' variable to access controller

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
          hideLoader();
          if (controller.works.isNotEmpty) {
            Get.offAllNamed('/workinvitation');
          } else {
            Get.offAllNamed('/dashboard');
          }
        } else if (state == StoreState.error) {
          hideLoader();
        }
      }),
      reaction((_) => controller.isLogged, (isLogged) {
        print(isLogged);
        if (isLogged != null) {
          if (isLogged) {
            controller.fetchMyWorkInvitation();
          } else {
            Get.offAllNamed('/login');
          }
        }
      }),
      reaction((_) => controller.errorMessage, (Message errorMessage) {

        if (errorMessage.description.isNotEmpty) {
          // esconder o loading
          Get.snackbar(errorMessage.title, errorMessage.description,
              backgroundColor: Colors.white, colorText: Colors.redAccent);
          // hideLoader();
        }
      })
    ];
  }

  @override
  Widget build(BuildContext context) {
    ThemeUtils.init(context);
    SizeUtils.init(context);
    Future.delayed(Duration(microseconds: 10), () => controller.initApp());
    return Scaffold(
      body: Center(
        child: Container(
          child: Center(
            child: SvgPicture.asset('assets/images/logo.svg'),
          ),
          color: Color(colorThree),),
      ),
    );
  }
}
