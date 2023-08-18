import 'bloc/k4_bloc.dart';
import 'models/k4_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:adbhut_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:adbhut_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:adbhut_s_application4/widgets/custom_drop_down.dart';
import 'package:adbhut_s_application4/widgets/custom_elevated_button.dart';
import 'package:adbhut_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class K4Screen extends StatelessWidget {
  const K4Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K4Bloc>(
      create: (context) => K4Bloc(K4State(
        k4ModelObj: K4Model(),
      ))
        ..add(K4InitialEvent()),
      child: K4Screen(),
    );
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
            text: "msg_add_employee_details".tr,
            margin: getMargin(
              left: 16,
            ),
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
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
              BlocSelector<K4Bloc, K4State, TextEditingController?>(
                selector: (state) => state.employeenameController,
                builder: (context, employeenameController) {
                  return CustomTextFormField(
                    controller: employeenameController,
                    contentPadding: getPadding(
                      top: 10,
                      right: 30,
                      bottom: 10,
                    ),
                    textStyle: theme.textTheme.bodyLarge!,
                    hintText: "lbl_joseph_manadan".tr,
                    hintStyle: theme.textTheme.bodyLarge!,
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
              BlocSelector<K4Bloc, K4State, K4Model?>(
                selector: (state) => state.k4ModelObj,
                builder: (context, k4ModelObj) {
                  return CustomDropDown(
                    icon: Container(
                      margin: getMargin(
                        left: 30,
                        right: 8,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant
                            .imgArrowdropdownfill1wght400grad0opsz243,
                      ),
                    ),
                    hintText: "msg_flutter_developer".tr,
                    margin: getMargin(
                      top: 23,
                    ),
                    textStyle: theme.textTheme.bodyLarge!,
                    items: k4ModelObj?.dropdownItemList ?? [],
                    prefix: Container(
                      margin: getMargin(
                        left: 8,
                        top: 8,
                        right: 12,
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
                    contentPadding: getPadding(
                      top: 10,
                      bottom: 10,
                    ),
                    onChanged: (value) {
                      context
                          .read<K4Bloc>()
                          .add(ChangeDropDownEvent(value: value));
                    },
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
                    BlocSelector<K4Bloc, K4State, TextEditingController?>(
                      selector: (state) => state.todayController,
                      builder: (context, todayController) {
                        return CustomTextFormField(
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
                    BlocSelector<K4Bloc, K4State, TextEditingController?>(
                      selector: (state) => state.dateController,
                      builder: (context, dateController) {
                        return CustomTextFormField(
                          width: getHorizontalSize(
                            172,
                          ),
                          controller: dateController,
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
}
