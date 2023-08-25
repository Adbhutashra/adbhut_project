import 'package:adbhut_s_application4/presentation/addEmployee_screen/addEmployeeUI.dart';
import 'package:adbhut_s_application4/presentation/editEmployee/editEmployeeUi.dart';
import 'package:adbhut_s_application4/presentation/employeeList/employeeListUI.dart';
import 'package:flutter/material.dart';
import 'package:adbhut_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String employeeListScreen = '/employeelist_screen';

  static const String addEmployeeScreen = '/addEmployee_screen';

  static const String editEmployeeScreen = '/editEmployee_screen';

  static const String k9Screen = '/k9_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        employeeListScreen: EmployeeListScreen.builder,
        addEmployeeScreen: AddEmployeeScreen.builder,
        editEmployeeScreen: EditEmployeeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: EmployeeListScreen.builder
      };
}
