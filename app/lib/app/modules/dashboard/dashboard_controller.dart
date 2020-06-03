import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'dashboard_controller.g.dart';

class DashBoardController = _DashBoardController with _$DashBoardController;

abstract class _DashBoardController with Store {
  

  var pageController = PageController();


  @observable
  int selectedIndex = 0;

  @action
  void changePage(int index) {
    pageController.jumpToPage(index);
    selectedIndex = index;
  }

  @action
  void onPressed(int index) {
    pageController.jumpToPage(index);
    selectedIndex = index;
  }

}
