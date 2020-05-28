import 'package:dentistry/app/components/button_action_widegt_v2.dart';
import 'package:dentistry/app/models/work_invitation_model.dart';
import 'package:dentistry/app/modules/home/home_controller.dart';
import 'package:dentistry/app/modules/register_user/register_user_page.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:mobx/src/api/observable_collections.dart';
import 'work_invitation_controller.dart';

class WorkInvitationPage extends StatefulWidget {
  final String title;
  const WorkInvitationPage({Key key, this.title = "WorkInvitation"})
      : super(key: key);

  @override
  _WorkInvitationPageState createState() => _WorkInvitationPageState();
}

class _WorkInvitationPageState
    extends ModularState<WorkInvitationPage, HomeController> {
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
              _makeWorkInvitations()
            ],
          )),
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
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    invites,
                    style: TextStyle(
                        color: Color(colorTen),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                    child: Text(
                      "Você precisa de um convite para utilizar o aplicativo.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(colorTen),
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              )),
        ]));
  }

  Widget _makeWorkInvitations() {
    return Flexible(
        child: ListView.builder(
      itemCount: controller.works.length,
      itemBuilder: (context, i) {
        return controller.works[i] != null
            ? _makeItem(controller.works[i])
            : Container(
                height: 0,
                width: 0,
              );
      },
    ));
  }

  Widget _makeItem(WorkInvitationModel work) {
    return Container(
        margin: EdgeInsets.only(right: 10.0, left: 10.0),
        height: 133.0,
        child: Card(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.yellow,
                  child: Row(
                    children: <Widget>[
                            CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                            'https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2011%2F05%2F31%2F01%2FWDL-Logo-4461_15855_035744941_1779079889.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                      Container(
                        margin:  EdgeInsets.all(16.0),
                        width:SizeUtils.widthScreen- 120.0,
                        color: Colors.green,
                        child: Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //Ele centralza a base horizontal
                            mainAxisAlignment:
                                MainAxisAlignment.start, //Ele centralza a base
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  color: Colors.red,
                                  child: Text(
                                    work.title,
                                  ),
                                ),
                              ),
                              FittedBox(
                                child: Text(
                                  work.message,
                                  overflow: TextOverflow.fade,
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      margin:
                          EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.end, //Ele centralza a base
                        children: <Widget>[
                          ButtonActionWidgetV2(
                            height: 35.0,
                            width: 80.0,
                            labelText: 'Aceitar',
                            onClick: () {},
                            colorBorder: Color(color_light_sea_green),
                            colorBackground: Color(color_light_sea_green),
                            colorText: Colors.white,
                            isDark: true,
                          ),
                          ButtonActionWidgetV2(
                            height: 35.0,
                            width: 80.0,
                            labelText: 'Aceitar',
                            onClick: () {},
                            colorBorder: Color(color_tomato),
                            colorBackground: Color(color_white),
                            colorText: Color(color_tomato),
                            isDark: true,
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
