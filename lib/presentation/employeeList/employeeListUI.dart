import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:adbhut_s_application4/data/databaseHelper/databaseHelper.dart';
import 'package:adbhut_s_application4/data/models/deletedEmployeeModel.dart';
import 'package:adbhut_s_application4/data/models/employeeModel.dart';
import 'package:adbhut_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:adbhut_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:adbhut_s_application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'bloc/employeeList_bloc.dart';
import 'models/employeeList_model.dart';

class EmployeeListScreen extends StatefulWidget {
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
  State<EmployeeListScreen> createState() => _EmployeeListScreenState();
}

class _EmployeeListScreenState extends State<EmployeeListScreen> {
  final dbHelper = DatabaseHelper();

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
            body: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 19,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text("msg_current_employees".tr,
                                style: TextStyle(color: Colors.blue)),
                          ),
                          FutureBuilder<List<EmployeeModel>>(
                            future: dbHelper.getEmployee(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                    child: CircularProgressIndicator());
                              } else if (snapshot.hasError) {
                                return Center(
                                    child: Text('Error: ${snapshot.error}'));
                              } else if (!snapshot.hasData ||
                                  snapshot.data!.isEmpty) {
                                return SizedBox(
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
                                );
                              } else {
                                return ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  shrinkWrap: true,
                                  physics: AlwaysScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    EmployeeModel employee =
                                        snapshot.data![index];
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Dismissible(
                                          key: Key(employee.name),
                                          direction:
                                              DismissDirection.endToStart,
                                          onDismissed: (direction) async {
                                            await dbHelper
                                                .deleteItem(employee.id!);
                                            setState(() {
                                              dbHelper.insertDeletedEmployee(
                                                  DeletedEmployeeModel(
                                                      name: employee.name,
                                                      role: employee.role,
                                                      startDate: employee.date,
                                                      endDate: DateFormat(
                                                              'd MMM, yyyy')
                                                          .format(
                                                              DateTime.now())));
                                            });
                                          },
                                          background: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 280.0),
                                            child: Icon(Icons.delete,
                                                color: Colors.red),
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                context,
                                                '/editEmployee_screen',
                                                arguments: {
                                                  'index': index,
                                                },
                                              );
                                            },
                                            child: Container(
                                              height: 100,
                                              width: double.infinity,
                                              color: Colors.white,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 15),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0),
                                                    child: Text(
                                                      employee.name,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: theme.textTheme
                                                          .titleMedium,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0),
                                                    child: Text(
                                                      employee.role,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyMediumErrorContainer14,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0),
                                                    child: Text(
                                                      "From ${employee.date}",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyMediumErrorContainer14,
                                                    ),
                                                  ),
                                                  SizedBox(height: 15)
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, bottom: 10, top: 10),
                            child: Text("msg_previous_employees".tr,
                                style: TextStyle(color: Colors.blue)),
                          ),
                          Column(
                            children: [
                              FutureBuilder<List<DeletedEmployeeModel>>(
                                future: dbHelper.getDeletedEmployee(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return Center(
                                        child: CircularProgressIndicator());
                                  } else if (snapshot.hasError) {
                                    return Center(
                                        child:
                                            Text('Error: ${snapshot.error}'));
                                  } else if (!snapshot.hasData ||
                                      snapshot.data!.isEmpty) {
                                    return SizedBox(
                                      width: double.maxFinite,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                              style: CustomTextStyles
                                                  .titleMedium18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else {
                                    return ListView.builder(
                                      itemCount: snapshot.data!.length,
                                      shrinkWrap: true,
                                      physics: ScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        DeletedEmployeeModel deletedEmployee =
                                            snapshot.data![index];
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 100,
                                              width: double.infinity,
                                              color: Colors.white,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 15),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0),
                                                    child: Text(
                                                      deletedEmployee.name,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: theme.textTheme
                                                          .titleMedium,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0),
                                                    child: Text(
                                                      deletedEmployee.role,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyMediumErrorContainer14,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0),
                                                    child: Text(
                                                      "${deletedEmployee.startDate} - ${deletedEmployee.endDate}",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyMediumErrorContainer14,
                                                    ),
                                                  ),
                                                  SizedBox(height: 15)
                                                ],
                                              ),
                                            )
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 13,
                        bottom: 44,
                      ),
                      child: Text(
                        "msg_swipe_left_to_delete".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyMediumErrorContainer,
                      ),
                    )
                  ],
                ),
              ),
            ),
            floatingActionButton: CustomFloatingButton(
              onTap: () {
                Navigator.pushNamed(context, '/addEmployee_screen');
              },
              height: 50,
              width: 50,
              decoration: BoxDecoration(),
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
