import 'dart:ui';
import 'package:adbhut_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue50 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
      );
  static ButtonStyle get fillBlue500 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              16,
            ),
            topRight: Radius.circular(
              16,
            ),
            bottomLeft: Radius.circular(
              0,
            ),
            bottomRight: Radius.circular(
              0,
            ),
          ),
        ),
      );
  static ButtonStyle get fillPrimary1 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
