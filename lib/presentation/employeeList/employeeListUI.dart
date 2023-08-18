import 'bloc/employeeList_bloc.dart';
import 'models/employeeList_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:adbhut_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:adbhut_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:adbhut_s_application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class EmployeeListScreen extends StatelessWidget {
  const EmployeeListScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EmployeeListBloc>(
      create: (context) => EmployeeListBloc(EmployeeListState(
        employeeListModelObj: EmployeeListModel(),
        
      ))
        ..add(EmployeeListInitialEvent()),
      child: EmployeeListScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<EmployeeListBloc, EmployeeListState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
              height: getVerticalSize(
                60,
              ),
              title: AppbarTitle(
                text: "lbl_employee_list".tr,
                margin: getMargin(
                  left: 16,
                ),
              ),
              styleType: Style.bgFill,
            ),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup5363,
                    height: getVerticalSize(
                      218,
                    ),
                    width: getHorizontalSize(
                      261,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 5,
                      bottom: 5,
                    ),
                    child: Text(
                      "msg_no_employee_records".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMedium18,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: CustomFloatingButton(
              onTap: () {
                Navigator.pushNamed(context, '/k5_screen');
              },
              height: 50,
              width: 50,
              backgroundColor: appTheme.blue500,
              child: CustomImageView(
                svgPath: ImageConstant.imgPlusicon,
                height: getVerticalSize(
                  25.0,
                ),
                width: getHorizontalSize(
                  25.0,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
