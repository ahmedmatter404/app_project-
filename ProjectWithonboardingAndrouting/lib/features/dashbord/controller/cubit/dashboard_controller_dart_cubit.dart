import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
//import 'package:frist_pages/features/auth/dashbord/controller/dashboard_state.dart';
import 'package:meta/meta.dart';

part 'dashboard_controller_dart_state.dart';

class DashboardControllerDartCubit extends Cubit<DashboardControllerDartState> {
  int sellectTabIndex = 0;
  final PageController pagecontroller = PageController();

  DashboardControllerDartCubit() : super(DashboardControllerDartInitial());
  void onChangetabIndex(int index) {
    sellectTabIndex = index;
    pagecontroller.jumpToPage(sellectTabIndex);
    emit(DashboardControllerDartInitial());
  }

  // DashboardControllerDartCubit() : super(DashboardControllerDartInitial());
}
