import '../k5_screen/widgets/listname_item_widget.dart';
import 'bloc/k5_bloc.dart';
import 'models/k5_model.dart';
import 'models/listname_item_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:adbhut_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:adbhut_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:adbhut_s_application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class K5Screen extends StatelessWidget {
  const K5Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K5Bloc>(
      create: (context) => K5Bloc(K5State(
        k5ModelObj: K5Model(),
      ))
        ..add(K5InitialEvent()),
      child: K5Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 18,
            ),
            child: Container(
              height: getVerticalSize(
                758,
              ),
              width: double.maxFinite,
              margin: getMargin(
                bottom: 59,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: AppDecoration.fill,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 16,
                            ),
                            child: Text(
                              "msg_current_employees".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumBlue500,
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            margin: getMargin(
                              top: 13,
                            ),
                            padding: getPadding(
                              left: 16,
                              top: 15,
                              right: 16,
                              bottom: 15,
                            ),
                            decoration: AppDecoration.fill1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_samantha_lee".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.titleMedium,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 10,
                                  ),
                                  child: Text(
                                    "msg_full_stack_developer".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles
                                        .bodyMediumErrorContainer14,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 9,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "msg_from_21_sep_2022".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              205,
                            ),
                            width: double.maxFinite,
                            margin: getMargin(
                              top: 3,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      105,
                                    ),
                                    width: getHorizontalSize(
                                      228,
                                    ),
                                    padding: getPadding(
                                      left: 17,
                                      top: 40,
                                      right: 17,
                                      bottom: 40,
                                    ),
                                    decoration: AppDecoration.fill2,
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgDeletefill0wg,
                                          height: getVerticalSize(
                                            24,
                                          ),
                                          width: getHorizontalSize(
                                            25,
                                          ),
                                          alignment: Alignment.centerRight,
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
                                      top: 15,
                                      right: 16,
                                      bottom: 15,
                                    ),
                                    decoration: AppDecoration.fill1,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "lbl_sarah_johnson".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 10,
                                          ),
                                          child: Text(
                                            "msg_senior_software".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles
                                                .bodyMediumErrorContainer14,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 9,
                                            bottom: 2,
                                          ),
                                          child: Text(
                                            "msg_from_14_jun_2022".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.bodySmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 19,
                            ),
                            child: Text(
                              "msg_previous_employees".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumBlue500,
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              top: 17,
                            ),
                            decoration: AppDecoration.fill3,
                            child: BlocSelector<K5Bloc, K5State, K5Model?>(
                              selector: (state) => state.k5ModelObj,
                              builder: (context, k5ModelObj) {
                                return ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (
                                    context,
                                    index,
                                  ) {
                                    return SizedBox(
                                      height: getVerticalSize(
                                        1,
                                      ),
                                    );
                                  },
                                  itemCount:
                                      k5ModelObj?.listnameItemList.length ?? 0,
                                  itemBuilder: (context, index) {
                                    ListnameItemModel model =
                                        k5ModelObj?.listnameItemList[index] ??
                                            ListnameItemModel();
                                    return ListnameItemWidget(
                                      model,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 13,
                            ),
                            child: Text(
                              "msg_swipe_left_to_delete".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.bodyMediumErrorContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: getMargin(
                        top: 137,
                      ),
                      padding: getPadding(
                        top: 15,
                        bottom: 15,
                      ),
                      decoration: AppDecoration.fill1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "lbl_david_kim".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleMedium,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 10,
                            ),
                            child: Text(
                              "msg_senior_software".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  CustomTextStyles.bodyMediumErrorContainer14,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 9,
                              bottom: 2,
                            ),
                            child: Text(
                              "msg_from_1_jul_2022".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: CustomFloatingButton(
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
  }
}
