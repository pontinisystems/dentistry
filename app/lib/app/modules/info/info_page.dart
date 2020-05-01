import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
            _makeStatistic(),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    top: 15,
                                    right: 15,
                                  ),
                                  child: Text('Today',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          color: Color(color_cyprus))),
                                ),
                                Flexible(child: _makeTest()),
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
      margin: EdgeInsets.only(right: 10, left: 10),
      width: double.infinity,
      height: 175.0,
      child: Card(
        color: Color(color_white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text('20,  Jan  - 20 Abr',
                      style: TextStyle(
                          fontSize: 12.0, color: Color(color_cyprus))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text('Filter',
                      style: TextStyle(
                          fontSize: 12.0, color: Color(color_cyprus))),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 4.0,
                ),
                _statisctContainer(
                  Color(color_tomato),
                ),
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
          SizedBox(
            height: 2.0,
          ),
          Text(
            '10',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 2.0,
          ),
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

  Widget _makeTest() {
    return ListView.builder(
        itemCount: 40,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10.0, left: 10.0),
            height: 78,
            child: Card(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, //Ele centralza a base horizontal
                  mainAxisAlignment:
                      MainAxisAlignment.start, //Ele centralza a base vertical
                  children: <Widget>[
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(right: 10.0, left: 10.0),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundImage: NetworkImage(
                              'https://s3.portalt5.com.br/imagens/ronaldinhogaucho.jpeg?mtime=20191026212926'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Ronaldinho Gaucho',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(color_cyprus),
                            ),
                          ),
                          Text(
                            "10:00 AM - 10:30 AM (30 min)",
                            //item?.description ?? "",
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(color_cyprus),
                            ),
                          ),
                        ],
                      ),
                    )),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          top: 30,
                          right: 5,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 25,
                            width: 70,
                            child: Card(
                              color: Color(color_summer_sky),
                              child: Center(
                                child: Text(
                                  'Consultar',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                              ),
                            ),
                          ),
                        )),
                  ]),
            ),
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
