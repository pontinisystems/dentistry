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
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Color(colorThree),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            _makeHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      // _makeStatistic(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: Column(
                              children: <Widget>[
                                Flexible(
                                  child: _makeStatistic(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _makeStatistic() {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 175.0,
      child: Card(
        color: Color(color_white),
        child: 
        
        
        
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 4.0,
            ),
            _statisctContainer(Color(color_tomato),),
            SizedBox(
              width: 4.0,
            ),
            _statisctContainer(Color(color_light_sea_green)),
            SizedBox(
              width: 4.0,
            ),
            _statisctContainer(Color(color_moon_yellow))
          ],
        ),
      ),
    );
  }

  Widget _statisctContainer(Color color) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.schedule,
            color: Colors.white,
          ),
          SizedBox(height: 2.0,),
          Text(
            '10',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 2.0,),

          Text(
            'Remarcada',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }

  Widget _grafic() {
    return Container(
      width: 103.0,
      height: 97.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color(0xff1d83ab),
            Color(0xff0cbab8),
          ],
        ),
      ),
      child: FlatButton(
        child: Text(
          'A',
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Righteous',
            fontWeight: FontWeight.w600,
          ),
        ),
        textColor: Colors.white,
        color: Colors.transparent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        onPressed: () {},
      ),
    );
  }

  Widget _makeTest() {
    return ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('data'),
          );
        });
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
                  margin: EdgeInsets.all(10),
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
