import '../models/listsun_item_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListsunItemWidget extends StatelessWidget {
  ListsunItemWidget(
    this.listsunItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListsunItemModel listsunItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(
        28,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            listsunItemModelObj.sunTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: theme.textTheme.bodyMedium,
          ),
          Container(
            width: getSize(
              28,
            ),
            margin: getMargin(
              top: 61,
            ),
            padding: getPadding(
              left: 9,
              top: 4,
              right: 9,
              bottom: 4,
            ),
            decoration: AppDecoration.txtOutline.copyWith(
              borderRadius: BorderRadiusStyle.txtCircleBorder14,
            ),
            child: Text(
              listsunItemModelObj.threeTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: CustomTextStyles.bodyMediumBlue500,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: getPadding(
                left: 5,
                top: 18,
              ),
              child: Text(
                listsunItemModelObj.threeoneTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 24,
            ),
            child: Text(
              listsunItemModelObj.threetwoTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 24,
            ),
            child: Text(
              listsunItemModelObj.threethreeTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
