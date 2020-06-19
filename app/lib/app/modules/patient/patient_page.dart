import 'package:dentistry/app/components/button_action_widget.dart';
import 'package:dentistry/app/core/store_state.dart';
import 'package:dentistry/app/mixins/loader_mixin.dart';
import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/models/patient_result.dart';
import 'package:dentistry/app/utils/colors_util.dart';
import 'package:dentistry/app/utils/size_utils.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
import 'patient_controller.dart';

class PatientPage extends StatefulWidget {
  final String title;
  const PatientPage({Key key, this.title = "Patient"}) : super(key: key);

  @override
  _PatientPageState createState() => _PatientPageState();
}

class _PatientPageState extends ModularState<PatientPage, PatientController>  with LoaderMixin {

  //use 'controller' variable to access controller

  List<ReactionDisposer> _disposer;

  @override
  void dispose() {
    _disposer.forEach((dispose) => dispose());
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _disposer ??= [
      reaction((_) => controller.state, (StoreState state) {
        if (state == StoreState.loading) {
          showLoader();
          // Chamar um loading
        } else if (state == StoreState.loaded) {
          // esconder o loading
          hideLoader();

        } else if (state == StoreState.error) {
          hideLoader();
        }
      }),

      reaction((_) => controller.errorMessage, (Message errorMessage) {

        if (errorMessage.description.isNotEmpty) {
          // esconder o loading
          Get.snackbar(errorMessage.title, errorMessage.description,
              backgroundColor: Colors.white, colorText: Colors.redAccent);
          // hideLoader();
        }
      })
    ];
  }


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
              _makePatients()
            ],
          )),
    );
  }
 Widget _makePatients() {
    return Flexible(child: Observer(builder: (_) {
      return ListView.builder(
        itemCount: controller.patients != null ?controller.patients.length:0,
        itemBuilder: (context, i) {
          return controller.patients.length != null
              ? _makeItem(controller.patients[i])
              : Container(
                  height: 0,
                  width: 0,
                );
        },
      );
    }));
  }
  Widget _makeItem(PatientResult patient) {
    return  Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              borderOnForeground: true,
              child: Container(
                  margin: EdgeInsets.only(right: 10.0, top: 10.0),
                  height: 78.0,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://conteudo.imguol.com.br/c/entretenimento/25/2019/09/23/axl-rose-durante-show-na-filadelfia-nos-eua-1569265997245_v2_615x300.jpg"),
                        ),
                        title: Text(
                          patient.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(color_cloud_burst),
                            fontSize: 14.0,
                          ),
                        ),
                        subtitle: Text(
                          '10:00 AM - 10:30 AM (30 min)',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color(color_cyprus),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.end, //Ele centralza a base
                              children: <Widget>[

                              ],
                            )),
                      ),
                    ],
                  ))));
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
                    patients,
                    style: TextStyle(
                        color: Color(color_black_pearl),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                 
                ],
              )),
        ]));
  }
}
