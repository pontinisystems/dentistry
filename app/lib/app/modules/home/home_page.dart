import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeUtils.init(context);
    SizeUtils.init(context);
    print('object');
    
    Future.delayed(Duration(seconds: 1), () => Get.offAllNamed('/dashboard'));
    return Scaffold(
      
      body: Center(
        child:CircularProgressIndicator(),
      ),
    );
  }
}
