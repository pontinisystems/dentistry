import 'package:dentistry/app/components/button_action_widegt_v2.dart';
import 'package:dentistry/app/models/work_invitation_model.dart';
import 'package:dentistry/app/modules/home/home_controller.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
                        color: Color(color_black_pearl),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                    child: Text( 
                      "Você precisa de um convite para utilizar o aplicativo.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(color_black_pearl),
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
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            borderOnForeground: true,
            child: Container(
                margin: EdgeInsets.only(right: 10.0, top: 10.0),
                height: 150.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://s3-sa-east-1.amazonaws.com/projetos-artes/fullsize%2F2011%2F05%2F31%2F01%2FWDL-Logo-4461_15855_035744941_1779079889.jpg"),
                      ),
                      title: Text(
                        work.title,style: TextStyle( fontWeight: FontWeight.bold,
                          color: Color(color_cloud_burst),
                          fontSize: 14.0,
                        ),
                        
                      ),
                      subtitle: Text(work.message,style: TextStyle(fontWeight: FontWeight.normal,
                          color: Color(color_cyprus),
                          fontSize: 16.0,
                        ),),
                    ),
                    Expanded(
                      child: Container(
                          child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.end, //Ele centralza a base
                        children: <Widget>[
                          ButtonActionWidgetV2(
                            height: 40.0,
                            width: 100.0,
                            labelText: 'Cancelar',
                            onClick: () {},
                            colorBorder: Color(color_tomato),
                            colorBackground: Color(color_white),
                            colorText: Color(color_tomato),
                            isDark: true,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          ButtonActionWidgetV2(
                            height: 40.0,
                            width: 100.0,
                            labelText: 'Aceitar',
                            onClick: () {},
                            colorBorder: Color(color_light_sea_green),
                            colorBackground: Color(color_light_sea_green),
                            colorText: Colors.white,
                            isDark: true,
                          ),
                        ],
                      )),
                    ),
                  ],
                ))));
  }
}
