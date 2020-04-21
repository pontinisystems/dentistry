import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'info_controller.dart';

class InfoPage extends StatefulWidget {
  final String title;
  const InfoPage({Key key, this.title = "Info"}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends ModularState<InfoPage, InfoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorThree),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _makeHeader(),
              SizedBox(
                height: 5.0,
              ),
              _makeStatistic(),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _makeStatistic() {
    return Container(
        margin: EdgeInsets.all(10),
        height: 150.0,
        child: Card(
          color: Colors.white,
          elevation: 4.0,
          borderOnForeground: true,
        ));
  }

  Widget _makeHeader() {
    return Container(
        color: Colors.white,
        width: SizeUtils.widthScreen,
        height: (MediaQuery.of(context).size.height * .2) -
            MediaQuery.of(context).padding.top,
        child: Container(
            width: 50.0,
            margin: EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://s3.portalt5.com.br/imagens/ronaldinhogaucho.jpeg?mtime=20191026212926'),
                  backgroundColor: Colors.transparent,
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Dr Bruxo',
                        style: TextStyle(color: Color(label_color)),
                      ),
                      SizedBox(height: 2.0),
                      Text('PeG Odontologia',
                          style:
                              TextStyle(color: Color(test_color_new_screen))),
                    ],
                  ),
                ),
              ],
            )));
  }
}
