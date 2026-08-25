import '../state/state.dart';

/// Provides color filter matrices for various color blindness types.
class ColorBlindnessFilters {
  static const List<double> _protanopia = [
    0.567, 0.433, 0.000, 0.0, 0.0,
    0.558, 0.442, 0.000, 0.0, 0.0,
    0.000, 0.242, 0.758, 0.0, 0.0,
    0.000, 0.000, 0.000, 1.0, 0.0,
  ];

  static const List<double> _deuteranopia = [
    0.625, 0.375, 0.000, 0.0, 0.0,
    0.700, 0.300, 0.000, 0.0, 0.0,
    0.000, 0.300, 0.700, 0.0, 0.0,
    0.000, 0.000, 0.000, 1.0, 0.0,
  ];

  static const List<double> _tritanopia = [
    0.950, 0.050, 0.000, 0.0, 0.0,
    0.000, 0.433, 0.567, 0.0, 0.0,
    0.000, 0.475, 0.525, 0.0, 0.0,
    0.000, 0.000, 0.000, 1.0, 0.0,
  ];

  static const List<double> _achromatopsia = [
    0.299, 0.587, 0.114, 0.0, 0.0,
    0.299, 0.587, 0.114, 0.0, 0.0,
    0.299, 0.587, 0.114, 0.0, 0.0,
    0.000, 0.000, 0.000, 1.0, 0.0,
  ];

  /// Returns the appropriate color matrix for the given type.
  static List<double>? getFilter(ColorBlindnessType type) {
    switch (type) {
      case ColorBlindnessType.protanopia:
        return _protanopia;
      case ColorBlindnessType.deuteranopia:
        return _deuteranopia;
      case ColorBlindnessType.tritanopia:
        return _tritanopia;
      case ColorBlindnessType.achromatopsia:
        return _achromatopsia;
      case ColorBlindnessType.none:
        return null;
    }
  }
}
