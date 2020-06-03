import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:dentistry/app/modules/info/info_page.dart';
import 'package:dentistry/app/modules/patient/patient_page.dart';
import 'package:dentistry/app/modules/register_patient/register_patient_page.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_controller.dart';

class DashBoardPage extends StatefulWidget {
  final String title;
  const DashBoardPage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _DashBoardPage createState() => _DashBoardPage();
}

class _DashBoardPage extends ModularState<DashBoardPage, DashBoardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [InfoPage(), PatientPage()],
      ),
      floatingActionButton: Observer(builder: (_) {
        return Visibility(
          visible: controller.selectedIndex ==1 ? true :false,
          child: FloatingActionButton(
           
             tooltip: 'Increment',
             onPressed: () {
                print('object');
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPatientPage()),
                );
               },
             child: new Icon(Icons.add),
          ),
        
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: Observer(
        builder: (BuildContext context) {
          return BubbleBottomBar(
            currentIndex: controller.selectedIndex,
            onTap: (index) => controller.changePage(index),
            fabLocation: BubbleBottomBarFabLocation.end,
            hasNotch: true,
            opacity: .2,
            items: <BubbleBottomBarItem>[
              BubbleBottomBarItem(
                icon: Icon(
                  Icons.dashboard,
                  color: Color(test_color_dashBoard),
                ),
                backgroundColor: Colors.blue,
                title: Text("Dashboard"),
                activeIcon: Icon(Icons.dashboard),
              ),
              BubbleBottomBarItem(
                icon: Icon(
                  Icons.people_outline,
                  color: Color(test_color_dashBoard),
                ),
                backgroundColor: Colors.blue,
                title: Text("Pacientes"),
                activeIcon: Icon(Icons.people_outline),
              ),
            ],
          );
        },
      ),
    );
  }
}
