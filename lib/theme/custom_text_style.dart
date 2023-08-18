import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumErrorContainer14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumBlue50014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue500,
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumBlue500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue500,
      );
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          14,
        ),
      );
  static get bodyMediumPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleSmallBlue500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get titleMediumBlue500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue500,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
