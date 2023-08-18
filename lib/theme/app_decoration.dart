import 'package:flutter/material.dart';
import 'package:adbhut_s_application4/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border(
          top: BorderSide(
            color: appTheme.gray100,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.black90066,
      );
  static BoxDecoration get outline3 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border(
          top: BorderSide(
            color: appTheme.gray100,
            width: getHorizontalSize(
              2,
            ),
          ),
        ),
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border(
          top: BorderSide(
            color: appTheme.gray100,
            width: getHorizontalSize(
              2,
            ),
          ),
        ),
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get txtOutline => BoxDecoration(
        border: Border.all(
          color: appTheme.blue500,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: appTheme.blue500,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );

  static BorderRadius customBorderBL16 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
  );

  static BorderRadius customBorderTL16 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        16,
      ),
    ),
  );

  static BorderRadius txtCircleBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
