
import 'package:dentistry/app/modules/home/dashboard_page.dart';
import 'package:dentistry/app/modules/home/patients_page.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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

      body: PageView(
        controller: controller.pageViewController,
        children: <Widget>[
          //TODO se for um page direto, chama a pagina direto

          DashboardPage(),
          AppointmentsPage(),
          PatientsPage()


//          RouterOutlet(module: ,),
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
                    icon: Icon(Icons.today), title: Text(appointment.toUpperCase())),
                BottomNavigationBarItem(
                    icon: Icon(Icons.people), title: Text(patients.toUpperCase())),


              ],
              onTap: (index) {
                controller.pageViewController.jumpToPage(index);
              },
            );
          }),
    );
  }
}
