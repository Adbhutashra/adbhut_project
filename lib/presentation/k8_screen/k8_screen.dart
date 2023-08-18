import 'bloc/k8_bloc.dart';
import 'models/k8_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:adbhut_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:adbhut_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:adbhut_s_application4/widgets/custom_drop_down.dart';
import 'package:adbhut_s_application4/widgets/custom_elevated_button.dart';
import 'package:adbhut_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class K8Screen extends StatelessWidget {
  const K8Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K8Bloc>(
      create: (context) => K8Bloc(K8State(
        k8ModelObj: K8Model(),
      ))
        ..add(K8InitialEvent()),
      child: K8Screen(),
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
              BlocSelector<K8Bloc, K8State, TextEditingController?>(
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
              BlocSelector<K8Bloc, K8State, K8Model?>(
                selector: (state) => state.k8ModelObj,
                builder: (context, k8ModelObj) {
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
                    items: k8ModelObj?.dropdownItemList ?? [],
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
                          .read<K8Bloc>()
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
                    Container(
                      padding: getPadding(
                        all: 8,
                      ),
                      decoration: AppDecoration.outline1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath:
                                ImageConstant.imgEventfill0wght300grad0opsz2411,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 9,
                              top: 4,
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_5_sep_2022".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyMedium14,
                            ),
                          ),
                        ],
                      ),
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
                    Container(
                      padding: getPadding(
                        all: 8,
                      ),
                      decoration: AppDecoration.outline1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath:
                                ImageConstant.imgEventfill0wght300grad0opsz2411,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 9,
                              top: 3,
                              bottom: 3,
                            ),
                            child: Text(
                              "lbl_no_date".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.bodyMediumErrorContainer14,
                            ),
                          ),
                        ],
                      ),
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
