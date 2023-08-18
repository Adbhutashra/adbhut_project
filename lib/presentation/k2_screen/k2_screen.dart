import 'bloc/k2_bloc.dart';
import 'models/k2_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:adbhut_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:adbhut_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:adbhut_s_application4/widgets/custom_drop_down.dart';
import 'package:adbhut_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class K2Screen extends StatelessWidget {
  const K2Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K2Bloc>(
      create: (context) => K2Bloc(K2State(
        k2ModelObj: K2Model(),
      ))
        ..add(K2InitialEvent()),
      child: K2Screen(),
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
              BlocSelector<K2Bloc, K2State, TextEditingController?>(
                selector: (state) => state.nameController,
                builder: (context, nameController) {
                  return CustomTextFormField(
                    controller: nameController,
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
              BlocSelector<K2Bloc, K2State, K2Model?>(
                selector: (state) => state.k2ModelObj,
                builder: (context, k2ModelObj) {
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
                    hintText: "lbl_select_role".tr,
                    margin: getMargin(
                      top: 23,
                    ),
                    textStyle: CustomTextStyles.bodyLargeErrorContainer,
                    items: k2ModelObj?.dropdownItemList ?? [],
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
                          .read<K2Bloc>()
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
                    BlocSelector<K2Bloc, K2State, TextEditingController?>(
                      selector: (state) => state.startdateController,
                      builder: (context, startdateController) {
                        return CustomTextFormField(
                          width: getHorizontalSize(
                            172,
                          ),
                          controller: startdateController,
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
                    BlocSelector<K2Bloc, K2State, TextEditingController?>(
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
      ),
    );
  }
}
