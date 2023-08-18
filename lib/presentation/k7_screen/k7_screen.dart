import '../k7_screen/widgets/listsun_item_widget.dart';
import 'bloc/k7_bloc.dart';
import 'models/k7_model.dart';
import 'models/listsun_item_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:adbhut_s_application4/widgets/custom_drop_down.dart';
import 'package:adbhut_s_application4/widgets/custom_elevated_button.dart';
import 'package:adbhut_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class K7Screen extends StatelessWidget {
  const K7Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K7Bloc>(
      create: (context) => K7Bloc(K7State(
        k7ModelObj: K7Model(),
      ))
        ..add(K7InitialEvent()),
      child: K7Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: getVerticalSize(
            834,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: double.maxFinite,
                  padding: getPadding(
                    left: 16,
                    top: 17,
                    right: 16,
                    bottom: 17,
                  ),
                  decoration: AppDecoration.txtFill,
                  child: Text(
                    "msg_add_employee_details".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 84,
                    right: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BlocSelector<K7Bloc, K7State, TextEditingController?>(
                        selector: (state) => state.group2500Controller,
                        builder: (context, group2500Controller) {
                          return CustomTextFormField(
                            controller: group2500Controller,
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
                                svgPath: ImageConstant
                                    .imgPersonfill0wght300grad0opsz2421,
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
                      BlocSelector<K7Bloc, K7State, K7Model?>(
                        selector: (state) => state.k7ModelObj,
                        builder: (context, k7ModelObj) {
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
                            items: k7ModelObj?.dropdownItemList ?? [],
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
                                  .read<K7Bloc>()
                                  .add(ChangeDropDownEvent(value: value));
                            },
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 23,
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
                                    svgPath: ImageConstant
                                        .imgEventfill0wght300grad0opsz2411,
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
                                      "lbl_today".tr,
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
                                    svgPath: ImageConstant
                                        .imgEventfill0wght300grad0opsz2411,
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
                                      "lbl_till_now".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles.bodyMedium14,
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
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: getPadding(
                    left: 16,
                    top: 143,
                    right: 16,
                    bottom: 143,
                  ),
                  decoration: AppDecoration.fill4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Container(
                            padding: getPadding(
                              left: 16,
                              top: 24,
                              right: 16,
                              bottom: 24,
                            ),
                            decoration: AppDecoration.fill1.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: CustomElevatedButton(
                                        text: "lbl_today".tr,
                                        margin: getMargin(
                                          right: 8,
                                        ),
                                        buttonStyle: CustomButtonStyles
                                            .fillBlue50
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                          double.maxFinite,
                                          getVerticalSize(
                                            36,
                                          ),
                                        ))),
                                        buttonTextStyle: CustomTextStyles
                                            .bodyMediumBlue50014,
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomElevatedButton(
                                        text: "lbl_next_monday".tr,
                                        margin: getMargin(
                                          left: 8,
                                        ),
                                        buttonStyle: CustomButtonStyles
                                            .fillBlue500
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                          double.maxFinite,
                                          getVerticalSize(
                                            36,
                                          ),
                                        ))),
                                        buttonTextStyle:
                                            CustomTextStyles.bodyMediumPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: CustomElevatedButton(
                                          text: "lbl_next_tuesday".tr,
                                          margin: getMargin(
                                            right: 8,
                                          ),
                                          buttonStyle: CustomButtonStyles
                                              .fillBlue50
                                              .copyWith(
                                                  fixedSize:
                                                      MaterialStateProperty.all<
                                                          Size>(Size(
                                            double.maxFinite,
                                            getVerticalSize(
                                              36,
                                            ),
                                          ))),
                                          buttonTextStyle: CustomTextStyles
                                              .bodyMediumBlue50014,
                                        ),
                                      ),
                                      Expanded(
                                        child: CustomElevatedButton(
                                          text: "lbl_after_1_week".tr,
                                          margin: getMargin(
                                            left: 8,
                                          ),
                                          buttonStyle: CustomButtonStyles
                                              .fillBlue50
                                              .copyWith(
                                                  fixedSize:
                                                      MaterialStateProperty.all<
                                                          Size>(Size(
                                            double.maxFinite,
                                            getVerticalSize(
                                              36,
                                            ),
                                          ))),
                                          buttonTextStyle: CustomTextStyles
                                              .bodyMediumBlue50014,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 8,
                                          top: 2,
                                        ),
                                        child: Text(
                                          "lbl_september_2023".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles.titleMedium18,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgPlay,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                        margin: getMargin(
                                          left: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    height: getVerticalSize(
                                      287,
                                    ),
                                    child:
                                        BlocSelector<K7Bloc, K7State, K7Model?>(
                                      selector: (state) => state.k7ModelObj,
                                      builder: (context, k7ModelObj) {
                                        return ListView.separated(
                                          padding: getPadding(
                                            left: 1,
                                            top: 24,
                                            right: 3,
                                            bottom: 35,
                                          ),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (
                                            context,
                                            index,
                                          ) {
                                            return SizedBox(
                                              width: getHorizontalSize(
                                                26,
                                              ),
                                            );
                                          },
                                          itemCount: k7ModelObj
                                                  ?.listsunItemList.length ??
                                              0,
                                          itemBuilder: (context, index) {
                                            ListsunItemModel model = k7ModelObj
                                                    ?.listsunItemList[index] ??
                                                ListsunItemModel();
                                            return ListsunItemWidget(
                                              model,
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          bottom: 56,
                        ),
                        padding: getPadding(
                          top: 16,
                          bottom: 16,
                        ),
                        decoration: AppDecoration.outline2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: getMargin(
                                top: 8,
                                bottom: 8,
                              ),
                              decoration: AppDecoration.fill1,
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgCalendar,
                                    height: getVerticalSize(
                                      23,
                                    ),
                                    width: getHorizontalSize(
                                      20,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                      top: 3,
                                    ),
                                    child: Text(
                                      "lbl_5_sep_2023".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomElevatedButton(
                              text: "lbl_cancel".tr,
                              buttonStyle: CustomButtonStyles.fillBlue50
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
                                getHorizontalSize(
                                  73,
                                ),
                                getVerticalSize(
                                  40,
                                ),
                              ))),
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallBlue500,
                            ),
                            CustomElevatedButton(
                              text: "lbl_save".tr,
                              buttonStyle: CustomButtonStyles.fillBlue500
                                  .copyWith(
                                      fixedSize:
                                          MaterialStateProperty.all<Size>(Size(
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            bottom: 12,
          ),
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          child: Container(
            decoration: AppDecoration.outline3,
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
      ),
    );
  }
}
