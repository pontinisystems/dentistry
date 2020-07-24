import 'package:dentistry/app/modules/home/dashboard_page.dart';
import 'package:dentistry/app/modules/home/patients_page.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'appointments_page.dart';
import 'controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _makeHeader(),
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: PageView(
              controller: controller.pageViewController,
              children: <Widget>[
                //TODO se for um page direto, chama a pagina direto

                DashboardPage(),
                AppointmentsPage(),
                PatientsPage(),

//          RouterOutlet(module: ,),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: controller.pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex: controller.pageViewController?.page?.round() ?? 0,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), title: Text(home.toUpperCase())),
                BottomNavigationBarItem(
                    icon: Icon(Icons.today),
                    title: Text(appointment.toUpperCase())),
                BottomNavigationBarItem(
                    icon: Icon(Icons.people),
                    title: Text(patients.toUpperCase())),
              ],
              onTap: (index) {
                controller.pageViewController.jumpToPage(index);
              },
            );
          }),
    );
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
