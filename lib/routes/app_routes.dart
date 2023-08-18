import 'package:adbhut_s_application4/presentation/employeeList/employeeListUI.dart';
import 'package:flutter/material.dart';
import 'package:adbhut_s_application4/presentation/k1_screen/k1_screen.dart';
import 'package:adbhut_s_application4/presentation/k2_screen/k2_screen.dart';
import 'package:adbhut_s_application4/presentation/k4_screen/k4_screen.dart';
import 'package:adbhut_s_application4/presentation/k5_screen/k5_screen.dart';
import 'package:adbhut_s_application4/presentation/k6_screen/k6_screen.dart';
import 'package:adbhut_s_application4/presentation/k7_screen/k7_screen.dart';
import 'package:adbhut_s_application4/presentation/k8_screen/k8_screen.dart';
import 'package:adbhut_s_application4/presentation/k9_screen/k9_screen.dart';
import 'package:adbhut_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String employeeListScreen = '/employeelist_screen';

  static const String k1Screen = '/k1_screen';

  static const String k2Screen = '/k2_screen';

  static const String k4Screen = '/k4_screen';

  static const String k5Screen = '/k5_screen';

  static const String k6Screen = '/k6_screen';

  static const String k7Screen = '/k7_screen';

  static const String k8Screen = '/k8_screen';

  static const String k9Screen = '/k9_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        employeeListScreen: EmployeeListScreen.builder,
        k1Screen: K1Screen.builder,
        k2Screen: K2Screen.builder,
        k4Screen: K4Screen.builder,
        k5Screen: K5Screen.builder,
        k6Screen: K6Screen.builder,
        k7Screen: K7Screen.builder,
        k8Screen: K8Screen.builder,
        k9Screen: K9Screen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: EmployeeListScreen.builder
      };
}
