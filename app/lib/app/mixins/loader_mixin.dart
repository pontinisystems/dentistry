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
}
