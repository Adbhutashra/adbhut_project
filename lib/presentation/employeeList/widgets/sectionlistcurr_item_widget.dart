import '../models/sectionlistcurr_item_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SectionlistcurrItemWidget extends StatelessWidget {
  SectionlistcurrItemWidget(
    this.sectionlistcurrItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SectionlistcurrItemModel sectionlistcurrItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
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
                  style: CustomTextStyles.bodyMediumErrorContainer14,
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
      ),
    );
  }
}
