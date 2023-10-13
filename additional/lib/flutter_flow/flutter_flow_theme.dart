// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color grey25;
  late Color grey50;
  late Color grey100;
  late Color grey200;
  late Color grey300;
  late Color grey400;
  late Color grey500;
  late Color grey600;
  late Color grey700;
  late Color grey800;
  late Color grey900;
  late Color primary15;
  late Color primary25;
  late Color primary50;
  late Color primary100;
  late Color primary200;
  late Color primary300;
  late Color primary400;
  late Color primary500;
  late Color primary600;
  late Color primary700;
  late Color primary800;
  late Color primary900;
  late Color secondary25;
  late Color secondary50;
  late Color secondary100;
  late Color secondary200;
  late Color secondary300;
  late Color secondary400;
  late Color secondary500;
  late Color secondary600;
  late Color secondary700;
  late Color secondary800;
  late Color secondary900;
  late Color secondary950;
  late Color error100;
  late Color error200;
  late Color error300;
  late Color error400;
  late Color error500;
  late Color error600;
  late Color error700;
  late Color error800;
  late Color error900;
  late Color warning100;
  late Color warning200;
  late Color warning300;
  late Color warning400;
  late Color warning500;
  late Color warning600;
  late Color warning700;
  late Color warning800;
  late Color warning900;
  late Color success100;
  late Color success200;
  late Color success300;
  late Color success400;
  late Color success500;
  late Color success600;
  late Color success700;
  late Color success800;
  late Color success900;
  late Color baseWhite;
  late Color baseBlack;
  late Color bottomSheetColor;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFE9232C);
  late Color secondary = const Color(0xFF8098F9);
  late Color tertiary = const Color(0xFFFDB022);
  late Color alternate = const Color(0xFF47CD89);
  late Color primaryText = const Color(0xFF667085);
  late Color secondaryText = const Color(0xFF98A2B3);
  late Color primaryBackground = const Color(0xFFF2F4F7);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF47CD89);
  late Color warning = const Color(0xFFFDB022);
  late Color error = const Color(0xFFF97066);
  late Color info = const Color(0xFF98A2B3);

  late Color grey25 = Color(0xFFFCFCFD);
  late Color grey50 = Color(0xFFF9F9F9);
  late Color grey100 = Color(0xFFF2F4F7);
  late Color grey200 = Color(0xFFEAECF0);
  late Color grey300 = Color(0xFFD0D5DD);
  late Color grey400 = Color(0xFF98A2B3);
  late Color grey500 = Color(0xFF667085);
  late Color grey600 = Color(0xFF475467);
  late Color grey700 = Color(0xFF344054);
  late Color grey800 = Color(0xFF1D2939);
  late Color grey900 = Color(0xFF101828);
  late Color primary15 = Color(0xFFFFF2F3);
  late Color primary25 = Color(0xFFFCE5E6);
  late Color primary50 = Color(0xFFFC9EA2);
  late Color primary100 = Color(0xFFF77B80);
  late Color primary200 = Color(0xFFF46A6F);
  late Color primary300 = Color(0xFFEE464E);
  late Color primary400 = Color(0xFFE9232C);
  late Color primary500 = Color(0xFFE3000A);
  late Color primary600 = Color(0xFFBA0008);
  late Color primary700 = Color(0xFF910006);
  late Color primary800 = Color(0xFF690005);
  late Color primary900 = Color(0xFF540004);
  late Color secondary25 = Color(0xFFF5F8FF);
  late Color secondary50 = Color(0xFFEEF4FF);
  late Color secondary100 = Color(0xFFE0EAFF);
  late Color secondary200 = Color(0xFFC7D7FE);
  late Color secondary300 = Color(0xFFA4BCFD);
  late Color secondary400 = Color(0xFF8098F9);
  late Color secondary500 = Color(0xFF6172F3);
  late Color secondary600 = Color(0xFF444CE7);
  late Color secondary700 = Color(0xFF3538CD);
  late Color secondary800 = Color(0xFF2D31A6);
  late Color secondary900 = Color(0xFF2D3282);
  late Color secondary950 = Color(0xFF1F235B);
  late Color error100 = Color(0xFFFEE4E2);
  late Color error200 = Color(0xFFFECDCA);
  late Color error300 = Color(0xFFFDA29B);
  late Color error400 = Color(0xFFF97066);
  late Color error500 = Color(0xFFF04438);
  late Color error600 = Color(0xFFD92D20);
  late Color error700 = Color(0xFFB42318);
  late Color error800 = Color(0xFF912018);
  late Color error900 = Color(0xFF7A271A);
  late Color warning100 = Color(0xFFFEF0C7);
  late Color warning200 = Color(0xFFFEDF89);
  late Color warning300 = Color(0xFFFEC84B);
  late Color warning400 = Color(0xFFFDB022);
  late Color warning500 = Color(0xFFF79009);
  late Color warning600 = Color(0xFFDC6803);
  late Color warning700 = Color(0xFFB54708);
  late Color warning800 = Color(0xFF93370D);
  late Color warning900 = Color(0xFF7A2E0E);
  late Color success100 = Color(0xFFDCFAE6);
  late Color success200 = Color(0xFFABEFC6);
  late Color success300 = Color(0xFF75E0A7);
  late Color success400 = Color(0xFF47CD89);
  late Color success500 = Color(0xFF17B26A);
  late Color success600 = Color(0xFF079455);
  late Color success700 = Color(0xFF067647);
  late Color success800 = Color(0xFF085D3A);
  late Color success900 = Color(0xFF074D31);
  late Color baseWhite = Color(0xFFFFFFFF);
  late Color baseBlack = Color(0xFF000000);
  late Color bottomSheetColor = Color(0x80101828);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Inter';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Inter';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Inter';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Inter';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Inter';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Inter';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Inter';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Inter';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Inter';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Inter';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Inter';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Inter';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Inter';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Inter';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodySmallFamily => 'Inter';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
