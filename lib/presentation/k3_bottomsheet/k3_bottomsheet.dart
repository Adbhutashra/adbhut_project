import 'bloc/k3_bloc.dart';
import 'models/k3_model.dart';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:adbhut_s_application4/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class K3Bottomsheet extends StatelessWidget {
  const K3Bottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K3Bloc>(
      create: (context) => K3Bloc(K3State(
        k3ModelObj: K3Model(),
      ))
        ..add(K3InitialEvent()),
      child: K3Bottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        decoration: AppDecoration.fill.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomElevatedButton(
              text: "msg_product_designer".tr,
              buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                double.maxFinite,
                getVerticalSize(
                  52,
                ),
              ))),
              buttonTextStyle: theme.textTheme.bodyLarge!,
            ),
            CustomElevatedButton(
              text: "msg_flutter_developer".tr,
              margin: getMargin(
                top: 1,
              ),
              buttonStyle: CustomButtonStyles.fillPrimary1.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                double.maxFinite,
                getVerticalSize(
                  52,
                ),
              ))),
              buttonTextStyle: theme.textTheme.bodyLarge!,
            ),
            CustomElevatedButton(
              text: "lbl_qa_tester".tr,
              margin: getMargin(
                top: 1,
              ),
              buttonStyle: CustomButtonStyles.fillPrimary1.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                double.maxFinite,
                getVerticalSize(
                  52,
                ),
              ))),
              buttonTextStyle: theme.textTheme.bodyLarge!,
            ),
            CustomElevatedButton(
              text: "lbl_product_owner".tr,
              margin: getMargin(
                top: 1,
              ),
              buttonStyle: CustomButtonStyles.fillPrimary1.copyWith(
                  fixedSize: MaterialStateProperty.all<Size>(Size(
                double.maxFinite,
                getVerticalSize(
                  52,
                ),
              ))),
              buttonTextStyle: theme.textTheme.bodyLarge!,
            ),
          ],
        ),
      ),
    );
  }
}
