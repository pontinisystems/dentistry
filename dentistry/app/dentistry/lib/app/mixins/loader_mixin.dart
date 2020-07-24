import 'package:dentistry/app/models/message.dart';
import 'package:dentistry/app/utils/strings.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoaderMixin {
  showLoader() {
    Get.dialog(Container(
      height: 200,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[CircularProgressIndicator()],
      ),
    ),barrierDismissible: false);
  }

  hideLoader() {
    Get.back();
  }

  void showLoaderV2(BuildContext context) {
    Get.dialog(Container(
      height: 200,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[CircularProgressIndicator()],
      ),
    ),barrierDismissible: false);
  }
  void showFlushBarError(BuildContext context, Message message) {
    print("showFlushBarError");
    Flushbar(
      duration: Duration(seconds: 2),
      backgroundGradient: LinearGradient(
        colors: [Colors.red.shade400, Colors.red.shade300],
        stops: [0.6, 1],
      ),
      flushbarPosition: FlushbarPosition.TOP,
      title: message.title.isEmpty ? genericErrorTitle:message.title,
      message: message.title.isEmpty ?genericErrorDescription:message.description,
    ).show(context);

  }

}
