import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'work_invitation_controller.dart';

class WorkInvitationPage extends StatefulWidget {
  final String title;
  const WorkInvitationPage({Key key, this.title = "WorkInvitation"})
      : super(key: key);

  @override
  _WorkInvitationPageState createState() => _WorkInvitationPageState();
}

class _WorkInvitationPageState
    extends ModularState<WorkInvitationPage, WorkInvitationController> {
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
          ],
        ),
      ),
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
              alignment: Alignment.centerLeft,
              child: Container(
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Get.back();
                  },
                ),
              )),
          Align(
              alignment: Alignment.center,
              child: Container(
                child: Text(
                  invites,
                  style: TextStyle(
                      color: Color(colorTen),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              )),
              Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                
                margin: EdgeInsets.only( left: 10.0, right: 10.0, top: 10.0),
                child: Text( 
                  
                  "Você precisa de um convite para utilizar o aplicativo.",
                            textAlign: TextAlign.center,

                  style: TextStyle(
                      
                      color: Color(colorTen),
                      fontSize: 16.0,
                      
                      fontWeight: FontWeight.normal),
                ),
              ))
        ]));
  }
}
