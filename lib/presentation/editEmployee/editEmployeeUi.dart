import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:adbhut_s_application4/data/databaseHelper/databaseHelper.dart';
import 'package:adbhut_s_application4/data/models/deletedEmployeeModel.dart';
import 'package:adbhut_s_application4/data/models/employeeModel.dart';
import 'package:adbhut_s_application4/presentation/editEmployee/models/editEmployee_model.dart';
import 'package:adbhut_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:adbhut_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:adbhut_s_application4/widgets/custom_elevated_button.dart';
import 'package:adbhut_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'bloc/editEmployee_bloc.dart';
import 'package:intl/intl.dart';

class EditEmployeeScreen extends StatefulWidget {
  const EditEmployeeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<EditEmployeeBloc>(
      create: (context) => EditEmployeeBloc(EditEmployeeState(
        editEmployeeModelObj: EditEmployeeModel(),
      ))
        ..add(EditEmployeeInitialEvent()),
      child: EditEmployeeScreen(),
    );
  }

  @override
  State<EditEmployeeScreen> createState() => _EditEmployeeScreenState();
}

class _EditEmployeeScreenState extends State<EditEmployeeScreen> {
  final dbHelper = DatabaseHelper();
   DateTime _chosenDate = DateTime.now();
  final TextEditingController namesController = TextEditingController();
  final TextEditingController datesController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController todayController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var id;
  List<SelectionPopupModel> items = [
    SelectionPopupModel(
      id: 1,
      title: "Product Designer",
    ),
    SelectionPopupModel(id: 2, title: "Flutter Developer"),
    SelectionPopupModel(id: 3, title: "QA Tester"),
    SelectionPopupModel(id: 4, title: "Product Owner"),
  ];

  calendar(TextEditingController controller) {
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, set) {
            return AlertDialog(
              actions: [
                Column(
                  children: [
                    Container(
                      height: 555,
                      width: double.maxFinite,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 242, 249, 253),
                                  minimumSize: Size(10, 30), // NEW
                                ),
                                onPressed: () {
                                   Navigator.pop(context);
                                  datesController.text = DateFormat('d MMM, yyyy').format(DateTime.now());
                                },
                                child: const Text(
                                  'Today',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 242, 249, 253),
                                  minimumSize: Size(10, 30), // NEW
                                ),
                                onPressed: () {
                                 setNextMonday(context , datesController);
                                },
                                child: const Text(
                                  'Next Monday',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                   backgroundColor:
                                      Color.fromARGB(255, 242, 249, 253),
                                  minimumSize: Size(10, 30), // NEW
                                ),
                                onPressed: () {
                                  setNextTuesday(context , datesController);
                                },
                                child: const Text(
                                  'Next Tuesday',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 242, 249, 253),
                                  minimumSize: Size(10, 30), // NEW
                                ),
                                onPressed: () {
                                  setNextWeek(context , datesController);
                                },
                                child: const Text(
                                  'After 1 week',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ],
                        ),
                         TableCalendar(
                          focusedDay: _chosenDate,
                          headerStyle: HeaderStyle(
                            leftChevronMargin: EdgeInsets.only(left: 50),
                            rightChevronMargin: EdgeInsets.only(right: 50),
                            titleCentered: true,
                            formatButtonVisible: false,
                          ),
                          selectedDayPredicate: (day) {
                            return isSameDay(_chosenDate, day);
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            set(() {
                              controller.text =
                                  DateFormat('d MMM, yyyy').format(focusedDay);
                              _chosenDate = selectedDay;
                            });
                          },
                          firstDay: DateTime.utc(2009, 12, 31),
                          lastDay: DateTime.utc(2030, 12, 31),
                        ),
                        Divider(color: Colors.grey),
                        Row(
                          children: [
                             Icon(Icons.calendar_month),
                            SizedBox(width: 5),

                            Text(DateFormat('d MMM, yyyy').format(_chosenDate)),
                            SizedBox(width: 25),
                           ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: CustomButtonStyles.fillBlue50.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    80,
                  ),
                  getVerticalSize(
                    40,
                  )))),
                                child: Text("Cancel", style: CustomTextStyles.titleSmallBlue500),),
                            SizedBox(width: 20),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Save"))
                          ],
                        )
                      ]),
                    )
                  ],
                )
              ],
            );
          });
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    getEmployees();
    super.initState();
  }

  getEmployees() async {
    final employees = await dbHelper.getEmployee();
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    var index = args['index'];
    namesController.text = employees[index].name;
    roleController.text = employees[index].role;
    datesController.text = employees[index].date;
    id = employees[index].id;
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            60,
          ),
          title: AppbarTitle(
            text: "msg_edit_employee_details".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () async {
                await dbHelper.deleteItem(id!);
                setState(() {
                  dbHelper.insertDeletedEmployee(DeletedEmployeeModel(
                      name:  namesController.text,
                      role: roleController.text,
                      startDate: datesController.text,
                      endDate: DateFormat('d MMM, yyyy').format(DateTime.now()) ));
                });
                Navigator.pushNamed(context, '/employeelist_screen');
              },
              child: CustomImageView(
                svgPath: ImageConstant.imgDeletefill0wgPrimary,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                margin: getMargin(
                  left: 16,
                  top: 18,
                  right: 16,
                  bottom: 18,
                ),
              ),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 16,
              top: 24,
              right: 16,
              bottom: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlocSelector<EditEmployeeBloc, EditEmployeeState,
                    EditEmployeeModel?>(
                  selector: (state) => state.editEmployeeModelObj,
                  builder: (context, editEmployeeModelObj) {
                    return CustomTextFormField(
                      autofocus: false,
                      controller: namesController,
                      contentPadding: getPadding(
                        top: 10,
                        right: 30,
                        bottom: 10,
                      ),
                      textStyle: CustomTextStyles.bodyLargeErrorContainer,
                      hintText: "lbl_employee_name".tr,
                      hintStyle: CustomTextStyles.bodyLargeErrorContainer,
                      textInputAction: TextInputAction.next,
                      prefix: Container(
                        margin: getMargin(
                          left: 8,
                          top: 8,
                          right: 12,
                          bottom: 8,
                        ),
                        child: CustomImageView(
                          svgPath:
                              ImageConstant.imgPersonfill0wght300grad0opsz2421,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          40,
                        ),
                      ),
                    );
                  },
                ),
                BlocSelector<EditEmployeeBloc, EditEmployeeState,
                    EditEmployeeModel?>(
                  selector: (state) => state.editEmployeeModelObj,
                  builder: (context, editEmployeeModelObj) {
                    return CustomTextFormField(
                      onTap: () {
                        _openBottomSheet(context);
                      },
                      controller: roleController,
                      readOnly: true,
                      prefix: Container(
                        margin: getMargin(
                          left: 8,
                          top: 8,
                          right: 9,
                          bottom: 8,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgBag,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: getVerticalSize(
                          40,
                        ),
                      ),
                      hintText: "lbl_select_role".tr,
                      margin: getMargin(
                        top: 23,
                      ),
                      textStyle: CustomTextStyles.bodyLargeErrorContainer,
                      contentPadding: getPadding(
                        top: 10,
                        bottom: 10,
                      ),
                    );
                  },
                ),
                Padding(
                  padding: getPadding(
                    top: 23,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BlocSelector<EditEmployeeBloc, EditEmployeeState,
                          EditEmployeeModel?>(
                        selector: (state) => state.editEmployeeModelObj,
                        builder: (context, editEmployeeModelObj) {
                          return CustomTextFormField(
                            readOnly: true,
                            width: getHorizontalSize(
                              172,
                            ),
                            controller: todayController,
                            contentPadding: getPadding(
                              top: 11,
                              right: 30,
                              bottom: 11,
                            ),
                            textStyle: CustomTextStyles.bodyMedium14,
                            hintText: "lbl_today".tr,
                            hintStyle: CustomTextStyles.bodyMedium14,
                            textInputAction: TextInputAction.next,
                            prefix: Container(
                              margin: getMargin(
                                left: 8,
                                top: 8,
                                right: 9,
                                bottom: 8,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant
                                    .imgEventfill0wght300grad0opsz2411,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                40,
                              ),
                            ),
                          );
                        },
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowrightalt,
                        height: getSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        margin: getMargin(
                          top: 10,
                          bottom: 10,
                        ),
                      ),
                      BlocSelector<EditEmployeeBloc, EditEmployeeState,
                          EditEmployeeModel?>(
                        selector: (state) => state.editEmployeeModelObj,
                        builder: (context, editEmployeeModelObj) {
                          return CustomTextFormField(
                            onTap: () {
                              calendar(datesController);
                            },
                            readOnly: true,
                            width: getHorizontalSize(
                              172,
                            ),
                            controller: datesController,
                            contentPadding: getPadding(
                              top: 11,
                              right: 30,
                              bottom: 11,
                            ),
                            textStyle:
                                CustomTextStyles.bodyMediumErrorContainer14,
                            hintText: "lbl_no_date".tr,
                            hintStyle:
                                CustomTextStyles.bodyMediumErrorContainer14,
                            prefix: Container(
                              margin: getMargin(
                                left: 8,
                                top: 8,
                                right: 9,
                                bottom: 8,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant
                                    .imgEventfill0wght300grad0opsz2411,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                40,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 16,
            right: 16,
            bottom: 12,
          ),
          decoration: AppDecoration.outline,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomElevatedButton(
                text: "lbl_cancel".tr,
                buttonStyle: CustomButtonStyles.fillBlue50.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    73,
                  ),
                  getVerticalSize(
                    40,
                  ),
                ))),
                buttonTextStyle: CustomTextStyles.titleSmallBlue500,
              ),
              CustomElevatedButton(
                onTap: () async {
                  if (namesController.text == "" ||
                      roleController.text == "" ||
                      datesController.text == "") {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Please Enter Fields"),
                    ));
                  } else {
                    final newEmployee = EmployeeModel(
                      id: id,
                      name: namesController.text,
                      role: roleController.text,
                      date: datesController.text,
                    );
                    await dbHelper.updateEmployee(id, newEmployee);
                    Navigator.pushNamed(context, '/employeelist_screen');
                  }
                },
                text: "lbl_save".tr,
                margin: getMargin(
                  left: 16,
                ),
                buttonStyle: CustomButtonStyles.fillBlue500.copyWith(
                    fixedSize: MaterialStateProperty.all<Size>(Size(
                  getHorizontalSize(
                    73,
                  ),
                  getVerticalSize(
                    40,
                  ),
                ))),
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0))),
      builder: (BuildContext context) {
        return Container(
          height: 250,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: GestureDetector(
                    onTap: () {
                      roleController.text = items[index].title;
                      Navigator.of(context).pop();
                    },
                    child: Center(child: Text(items[index].title))),
              );
            },
          ),
        );
      },
    );
  }
}
