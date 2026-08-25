import '/src/state/state.dart';
import 'package:flutter/material.dart';

/// Premium accent color used throughout the device preview UI.
const Color kAccentColor = Color(0xFF00E5FF);

/// Darker surface for cards/panels.
const Color kSurfaceDark = Color(0xFF1A1A2E);

/// Slightly lighter surface for elevated cards.
const Color kCardDark = Color(0xFF1E1E36);

/// Background for the panel.
const Color kBackgroundDark = Color(0xFF0F0F1A);

/// Subtle border color.
const Color kBorderDark = Color(0xFF2A2A4A);

/// Muted text color.
const Color kMutedText = Color(0xFF8888AA);

extension ThemeBackgroundExtension on DevicePreviewBackgroundThemeData {
  /// Converts a [DevicePreviewBackgroundThemeData] to a [ThemeData].
  ThemeData asThemeData() {
    switch (this) {
      case DevicePreviewBackgroundThemeData.dark:
        return ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xFF121212),
        );
      case DevicePreviewBackgroundThemeData.light:
        return ThemeData.light();
    }
  }
}

extension ThemeToolbarExtension on DevicePreviewToolBarThemeData {
  /// Converts a [DevicePreviewToolBarThemeData] to a [ThemeData].
  ThemeData asThemeData() {
    switch (this) {
      case DevicePreviewToolBarThemeData.dark:
        return _buildDarkToolbarTheme();
      case DevicePreviewToolBarThemeData.light:
        return _buildLightToolbarTheme();
    }
  }
}

ThemeData _buildDarkToolbarTheme() {
  final base = ThemeData.dark();
  return base.copyWith(
    scaffoldBackgroundColor: kBackgroundDark,
    colorScheme: const ColorScheme.dark(
      primary: kAccentColor,
      secondary: kAccentColor,
      surface: kSurfaceDark,
      onSurface: Colors.white,
      onPrimary: kBackgroundDark,
    ),
    primaryColor: kAccentColor,
    primaryColorDark: kAccentColor,
    highlightColor: kAccentColor.withValues(alpha: 0.08),
    hintColor: kMutedText,
    dividerColor: kBorderDark,
    cardColor: kCardDark,
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: kBackgroundDark,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.3,
      ),
      iconTheme: const IconThemeData(color: Colors.white70),
    ),
    cardTheme: CardThemeData(
      color: kCardDark,
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: kBorderDark, width: 0.5),
      ),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.white70,
      textColor: Colors.white,
      subtitleTextStyle: TextStyle(
        color: kMutedText,
        fontSize: 12,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      dense: true,
    ),
    iconTheme: const IconThemeData(color: Colors.white70, size: 20),
    sliderTheme: base.sliderTheme.copyWith(
      thumbColor: kAccentColor,
      activeTrackColor: kAccentColor.withValues(alpha: 0.7),
      inactiveTrackColor: kAccentColor.withValues(alpha: 0.12),
      activeTickMarkColor: kAccentColor,
      inactiveTickMarkColor: kAccentColor.withValues(alpha: 0.3),
      overlayColor: kAccentColor.withValues(alpha: 0.12),
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7),
      trackHeight: 3,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) return null;
        if (states.contains(WidgetState.selected)) return kAccentColor;
        return null;
      }),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) return null;
        if (states.contains(WidgetState.selected)) return kAccentColor;
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) return kAccentColor;
        return const Color(0xFF555566);
      }),
      trackColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return kAccentColor.withValues(alpha: 0.3);
        }
        return const Color(0xFF2A2A3A);
      }),
      trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
        return Colors.transparent;
      }),
    ),
    tabBarTheme: const TabBarThemeData(
      indicatorColor: kAccentColor,
      labelColor: kAccentColor,
      unselectedLabelColor: kMutedText,
    ),
    textTheme: base.textTheme.copyWith(
      titleLarge: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: const TextStyle(
        color: kMutedText,
        fontSize: 11,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2,
      ),
      bodyMedium: const TextStyle(
        color: Colors.white,
        fontSize: 13,
      ),
      bodySmall: const TextStyle(
        color: kMutedText,
        fontSize: 12,
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: kCardDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: kBorderDark, width: 0.5),
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: kSurfaceDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: kBorderDark, width: 0.5),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: kSurfaceDark,
      hintStyle: const TextStyle(color: kMutedText, fontSize: 13),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: kBorderDark),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: kBorderDark),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: kAccentColor, width: 1.5),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    ),
  );
}

ThemeData _buildLightToolbarTheme() {
  final base = ThemeData.light();
  const accentColor = Color(0xFF0097A7);
  const surfaceColor = Color(0xFFF5F7FA);
  const cardColor = Colors.white;
  const borderColor = Color(0xFFE0E4EA);

  return base.copyWith(
    scaffoldBackgroundColor: surfaceColor,
    colorScheme: const ColorScheme.light(
      primary: accentColor,
      secondary: accentColor,
      surface: surfaceColor,
    ),
    primaryColor: accentColor,
    primaryColorDark: accentColor,
    highlightColor: accentColor.withValues(alpha: 0.08),
    hintColor: const Color(0xFF8899AA),
    dividerColor: borderColor,
    cardColor: cardColor,
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: surfaceColor,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: Color(0xFF1A1A2E),
        fontSize: 15,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.3,
      ),
      iconTheme: const IconThemeData(color: Color(0xFF555566)),
    ),
    cardTheme: CardThemeData(
      color: cardColor,
      elevation: 0,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: borderColor, width: 0.5),
      ),
    ),
    listTileTheme: const ListTileThemeData(
      iconColor: Color(0xFF555566),
      textColor: Color(0xFF1A1A2E),
      subtitleTextStyle: TextStyle(
        color: Color(0xFF8899AA),
        fontSize: 12,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      dense: true,
    ),
    sliderTheme: base.sliderTheme.copyWith(
      thumbColor: accentColor,
      activeTrackColor: accentColor.withValues(alpha: 0.7),
      inactiveTrackColor: accentColor.withValues(alpha: 0.12),
      activeTickMarkColor: accentColor,
      inactiveTickMarkColor: accentColor,
      overlayColor: accentColor.withValues(alpha: 0.12),
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7),
      trackHeight: 3,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) return null;
        if (states.contains(WidgetState.selected)) return accentColor;
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) return null;
        if (states.contains(WidgetState.selected)) return accentColor;
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) return accentColor;
        return const Color(0xFFBBBBCC);
      }),
      trackColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return accentColor.withValues(alpha: 0.3);
        }
        return const Color(0xFFDDDDEE);
      }),
      trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
        return Colors.transparent;
      }),
    ),
    tabBarTheme: const TabBarThemeData(
      indicatorColor: accentColor,
      labelColor: accentColor,
      unselectedLabelColor: Color(0xFF8899AA),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      hintStyle: const TextStyle(color: Color(0xFF8899AA), fontSize: 13),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: accentColor, width: 1.5),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    ),
  );
}
