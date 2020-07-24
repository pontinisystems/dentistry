import 'dart:async';

import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/mixins/loader_mixin.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobx/mobx.dart';
import 'start_controller.dart';

class StartPage extends StatefulWidget {
  final String title;

  const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController>
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
        } else if (state == StoreState.loaded) {
        }
      }), reaction((_) => controller.isLogged, (bool isLogged) {
        if (isLogged) {
          Future.delayed(const Duration(milliseconds: 4500), () {
            setState(() {
              Navigator.popAndPushNamed(context, '/dashboard');

            });
          });


        } else {
          Future.delayed(const Duration(milliseconds: 4500), () {
            setState(() {
              Navigator.popAndPushNamed(context, '/login');


            });
          });
        }

      }),
    ];
  }

  @override
  Widget build(BuildContext context) {
    ThemeUtils.init(context);
    SizeUtils.init(context);
    return Scaffold(

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(height: 10),
              Text('Inicializando o aplicativo')
            ],
          ),
        ));
  }
}
