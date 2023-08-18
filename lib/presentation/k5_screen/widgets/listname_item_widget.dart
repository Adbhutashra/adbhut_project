import '../models/listname_item_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListnameItemWidget extends StatelessWidget {
  ListnameItemWidget(
    this.listnameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListnameItemModel listnameItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 17,
        right: 16,
        bottom: 17,
      ),
      decoration: AppDecoration.fill1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Text(
              listnameItemModelObj.nameTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 10,
            ),
            child: Text(
              listnameItemModelObj.jobtitleTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodyMediumErrorContainer14,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              listnameItemModelObj.k21sep20221Txt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
