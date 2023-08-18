import '../k9_screen/widgets/sectionlistcurr_item_widget.dart';
import 'bloc/k9_bloc.dart';
import 'models/k9_model.dart';
import 'models/sectionlistcurr_item_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:adbhut_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:adbhut_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:adbhut_s_application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class K9Screen extends StatelessWidget {
  const K9Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K9Bloc>(
      create: (context) => K9Bloc(K9State(
        k9ModelObj: K9Model(),
      ))
        ..add(K9InitialEvent()),
      child: K9Screen(),
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
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: BlocSelector<K9Bloc, K9State, K9Model?>(
                    selector: (state) => state.k9ModelObj,
                    builder: (context, k9ModelObj) {
                      return GroupedListView<SectionlistcurrItemModel, String>(
                        shrinkWrap: true,
                        useStickyGroupSeparators: true,
                        stickyHeaderBackgroundColor: Colors.transparent,
                        elements: k9ModelObj?.sectionlistcurrItemList ?? [],
                        groupBy: (element) => element.groupBy!,
                        sort: false,
                        groupSeparatorBuilder: (String value) {
                          return Text(
                            value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.titleMediumBlue500.copyWith(
                              color: appTheme.blue500,
                            ),
                          );
                        },
                        itemBuilder: (context, model) {
                          return SectionlistcurrItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
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
              ),
            ],
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
