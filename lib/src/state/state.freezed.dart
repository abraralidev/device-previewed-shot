// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DevicePreviewState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DevicePreviewState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DevicePreviewState()';
  }
}

/// @nodoc
class $DevicePreviewStateCopyWith<$Res> {
  $DevicePreviewStateCopyWith(
      DevicePreviewState _, $Res Function(DevicePreviewState) __);
}

/// Adds pattern-matching-related methods to [DevicePreviewState].
extension DevicePreviewStatePatterns on DevicePreviewState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotInitializedDevicePreviewState value)? notInitialized,
    TResult Function(_InitializingDevicePreviewState value)? initializing,
    TResult Function(_InitializedDevicePreviewState value)? initialized,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotInitializedDevicePreviewState() when notInitialized != null:
        return notInitialized(_that);
      case _InitializingDevicePreviewState() when initializing != null:
        return initializing(_that);
      case _InitializedDevicePreviewState() when initialized != null:
        return initialized(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotInitializedDevicePreviewState value)
        notInitialized,
    required TResult Function(_InitializingDevicePreviewState value)
        initializing,
    required TResult Function(_InitializedDevicePreviewState value) initialized,
  }) {
    final _that = this;
    switch (_that) {
      case _NotInitializedDevicePreviewState():
        return notInitialized(_that);
      case _InitializingDevicePreviewState():
        return initializing(_that);
      case _InitializedDevicePreviewState():
        return initialized(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotInitializedDevicePreviewState value)? notInitialized,
    TResult? Function(_InitializingDevicePreviewState value)? initializing,
    TResult? Function(_InitializedDevicePreviewState value)? initialized,
  }) {
    final _that = this;
    switch (_that) {
      case _NotInitializedDevicePreviewState() when notInitialized != null:
        return notInitialized(_that);
      case _InitializingDevicePreviewState() when initializing != null:
        return initializing(_that);
      case _InitializedDevicePreviewState() when initialized != null:
        return initialized(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function()? initializing,
    TResult Function(List<DeviceInfo> devices, List<NamedLocale> locales,
            DevicePreviewData data)?
        initialized,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotInitializedDevicePreviewState() when notInitialized != null:
        return notInitialized();
      case _InitializingDevicePreviewState() when initializing != null:
        return initializing();
      case _InitializedDevicePreviewState() when initialized != null:
        return initialized(_that.devices, _that.locales, _that.data);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function() initializing,
    required TResult Function(List<DeviceInfo> devices,
            List<NamedLocale> locales, DevicePreviewData data)
        initialized,
  }) {
    final _that = this;
    switch (_that) {
      case _NotInitializedDevicePreviewState():
        return notInitialized();
      case _InitializingDevicePreviewState():
        return initializing();
      case _InitializedDevicePreviewState():
        return initialized(_that.devices, _that.locales, _that.data);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function()? initializing,
    TResult? Function(List<DeviceInfo> devices, List<NamedLocale> locales,
            DevicePreviewData data)?
        initialized,
  }) {
    final _that = this;
    switch (_that) {
      case _NotInitializedDevicePreviewState() when notInitialized != null:
        return notInitialized();
      case _InitializingDevicePreviewState() when initializing != null:
        return initializing();
      case _InitializedDevicePreviewState() when initialized != null:
        return initialized(_that.devices, _that.locales, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NotInitializedDevicePreviewState implements DevicePreviewState {
  const _NotInitializedDevicePreviewState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotInitializedDevicePreviewState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DevicePreviewState.notInitialized()';
  }
}

/// @nodoc

class _InitializingDevicePreviewState implements DevicePreviewState {
  const _InitializingDevicePreviewState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitializingDevicePreviewState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DevicePreviewState.initializing()';
  }
}

/// @nodoc

class _InitializedDevicePreviewState implements DevicePreviewState {
  const _InitializedDevicePreviewState(
      {required final List<DeviceInfo> devices,
      required final List<NamedLocale> locales,
      required this.data})
      : _devices = devices,
        _locales = locales;

  /// The list of all available devices.
  final List<DeviceInfo> _devices;

  /// The list of all available devices.
  List<DeviceInfo> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  /// The list of all available locales.
  final List<NamedLocale> _locales;

  /// The list of all available locales.
  List<NamedLocale> get locales {
    if (_locales is EqualUnmodifiableListView) return _locales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locales);
  }

  /// The user settings of the preview.
  final DevicePreviewData data;

  /// Create a copy of DevicePreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitializedDevicePreviewStateCopyWith<_InitializedDevicePreviewState>
      get copyWith => __$InitializedDevicePreviewStateCopyWithImpl<
          _InitializedDevicePreviewState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitializedDevicePreviewState &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            const DeepCollectionEquality().equals(other._locales, _locales) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_devices),
      const DeepCollectionEquality().hash(_locales),
      data);

  @override
  String toString() {
    return 'DevicePreviewState.initialized(devices: $devices, locales: $locales, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$InitializedDevicePreviewStateCopyWith<$Res>
    implements $DevicePreviewStateCopyWith<$Res> {
  factory _$InitializedDevicePreviewStateCopyWith(
          _InitializedDevicePreviewState value,
          $Res Function(_InitializedDevicePreviewState) _then) =
      __$InitializedDevicePreviewStateCopyWithImpl;
  @useResult
  $Res call(
      {List<DeviceInfo> devices,
      List<NamedLocale> locales,
      DevicePreviewData data});

  $DevicePreviewDataCopyWith<$Res> get data;
}

/// @nodoc
class __$InitializedDevicePreviewStateCopyWithImpl<$Res>
    implements _$InitializedDevicePreviewStateCopyWith<$Res> {
  __$InitializedDevicePreviewStateCopyWithImpl(this._self, this._then);

  final _InitializedDevicePreviewState _self;
  final $Res Function(_InitializedDevicePreviewState) _then;

  /// Create a copy of DevicePreviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? devices = null,
    Object? locales = null,
    Object? data = null,
  }) {
    return _then(_InitializedDevicePreviewState(
      devices: null == devices
          ? _self._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DeviceInfo>,
      locales: null == locales
          ? _self._locales
          : locales // ignore: cast_nullable_to_non_nullable
              as List<NamedLocale>,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DevicePreviewData,
    ));
  }

  /// Create a copy of DevicePreviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DevicePreviewDataCopyWith<$Res> get data {
    return $DevicePreviewDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$DevicePreviewData {
  /// Indicate whether the toolbar is visible.
  bool get isToolbarVisible;

  /// Indicate whether the device simulation is enabled.
  bool get isEnabled;

  /// The current orientation of the device
  Orientation get orientation;

  /// The currently selected device.
  String? get deviceIdentifier;

  /// The currently selected device locale.
  String get locale;

  /// Indicate whether the frame is currently visible.
  bool get isFrameVisible;

  /// Indicate whether the mode is currently dark.
  bool get isDarkMode;

  /// Indicate whether texts are forced to bold.
  bool get boldText;

  /// Indicate whether the virtual keyboard is visible.
  bool get isVirtualKeyboardVisible;

  /// Indicate whether animations are disabled.
  bool get disableAnimations;

  /// Indicate whether the highcontrast mode is activated.
  bool get highContrast;

  /// Indicate whether the navigation is in accessible mode.
  bool get accessibleNavigation;

  /// Indicate whether image colors are inverted.
  bool get invertColors;

  /// Indicate whether image colors are inverted.
  Map<String, Map<String, dynamic>> get pluginData;

  /// The current text scaling factor.
  double get textScaleFactor;
  DevicePreviewSettingsData? get settings;

  /// The custom device configuration
  CustomDeviceInfoData? get customDevice;

  /// The active color blindness simulation type.
  ColorBlindnessType get colorBlindness;

  /// Create a copy of DevicePreviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DevicePreviewDataCopyWith<DevicePreviewData> get copyWith =>
      _$DevicePreviewDataCopyWithImpl<DevicePreviewData>(
          this as DevicePreviewData, _$identity);

  /// Serializes this DevicePreviewData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DevicePreviewData &&
            (identical(other.isToolbarVisible, isToolbarVisible) ||
                other.isToolbarVisible == isToolbarVisible) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.orientation, orientation) ||
                other.orientation == orientation) &&
            (identical(other.deviceIdentifier, deviceIdentifier) ||
                other.deviceIdentifier == deviceIdentifier) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isFrameVisible, isFrameVisible) ||
                other.isFrameVisible == isFrameVisible) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.boldText, boldText) ||
                other.boldText == boldText) &&
            (identical(
                    other.isVirtualKeyboardVisible, isVirtualKeyboardVisible) ||
                other.isVirtualKeyboardVisible == isVirtualKeyboardVisible) &&
            (identical(other.disableAnimations, disableAnimations) ||
                other.disableAnimations == disableAnimations) &&
            (identical(other.highContrast, highContrast) ||
                other.highContrast == highContrast) &&
            (identical(other.accessibleNavigation, accessibleNavigation) ||
                other.accessibleNavigation == accessibleNavigation) &&
            (identical(other.invertColors, invertColors) ||
                other.invertColors == invertColors) &&
            const DeepCollectionEquality()
                .equals(other.pluginData, pluginData) &&
            (identical(other.textScaleFactor, textScaleFactor) ||
                other.textScaleFactor == textScaleFactor) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.customDevice, customDevice) ||
                other.customDevice == customDevice) &&
            (identical(other.colorBlindness, colorBlindness) ||
                other.colorBlindness == colorBlindness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isToolbarVisible,
      isEnabled,
      orientation,
      deviceIdentifier,
      locale,
      isFrameVisible,
      isDarkMode,
      boldText,
      isVirtualKeyboardVisible,
      disableAnimations,
      highContrast,
      accessibleNavigation,
      invertColors,
      const DeepCollectionEquality().hash(pluginData),
      textScaleFactor,
      settings,
      customDevice,
      colorBlindness);

  @override
  String toString() {
    return 'DevicePreviewData(isToolbarVisible: $isToolbarVisible, isEnabled: $isEnabled, orientation: $orientation, deviceIdentifier: $deviceIdentifier, locale: $locale, isFrameVisible: $isFrameVisible, isDarkMode: $isDarkMode, boldText: $boldText, isVirtualKeyboardVisible: $isVirtualKeyboardVisible, disableAnimations: $disableAnimations, highContrast: $highContrast, accessibleNavigation: $accessibleNavigation, invertColors: $invertColors, pluginData: $pluginData, textScaleFactor: $textScaleFactor, settings: $settings, customDevice: $customDevice, colorBlindness: $colorBlindness)';
  }
}

/// @nodoc
abstract mixin class $DevicePreviewDataCopyWith<$Res> {
  factory $DevicePreviewDataCopyWith(
          DevicePreviewData value, $Res Function(DevicePreviewData) _then) =
      _$DevicePreviewDataCopyWithImpl;
  @useResult
  $Res call(
      {bool isToolbarVisible,
      bool isEnabled,
      Orientation orientation,
      String? deviceIdentifier,
      String locale,
      bool isFrameVisible,
      bool isDarkMode,
      bool boldText,
      bool isVirtualKeyboardVisible,
      bool disableAnimations,
      bool highContrast,
      bool accessibleNavigation,
      bool invertColors,
      Map<String, Map<String, dynamic>> pluginData,
      double textScaleFactor,
      DevicePreviewSettingsData? settings,
      CustomDeviceInfoData? customDevice,
      ColorBlindnessType colorBlindness});

  $DevicePreviewSettingsDataCopyWith<$Res>? get settings;
  $CustomDeviceInfoDataCopyWith<$Res>? get customDevice;
}

/// @nodoc
class _$DevicePreviewDataCopyWithImpl<$Res>
    implements $DevicePreviewDataCopyWith<$Res> {
  _$DevicePreviewDataCopyWithImpl(this._self, this._then);

  final DevicePreviewData _self;
  final $Res Function(DevicePreviewData) _then;

  /// Create a copy of DevicePreviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isToolbarVisible = null,
    Object? isEnabled = null,
    Object? orientation = null,
    Object? deviceIdentifier = freezed,
    Object? locale = null,
    Object? isFrameVisible = null,
    Object? isDarkMode = null,
    Object? boldText = null,
    Object? isVirtualKeyboardVisible = null,
    Object? disableAnimations = null,
    Object? highContrast = null,
    Object? accessibleNavigation = null,
    Object? invertColors = null,
    Object? pluginData = null,
    Object? textScaleFactor = null,
    Object? settings = freezed,
    Object? customDevice = freezed,
    Object? colorBlindness = null,
  }) {
    return _then(_self.copyWith(
      isToolbarVisible: null == isToolbarVisible
          ? _self.isToolbarVisible
          : isToolbarVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: null == isEnabled
          ? _self.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      orientation: null == orientation
          ? _self.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation,
      deviceIdentifier: freezed == deviceIdentifier
          ? _self.deviceIdentifier
          : deviceIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      isFrameVisible: null == isFrameVisible
          ? _self.isFrameVisible
          : isFrameVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: null == isDarkMode
          ? _self.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      boldText: null == boldText
          ? _self.boldText
          : boldText // ignore: cast_nullable_to_non_nullable
              as bool,
      isVirtualKeyboardVisible: null == isVirtualKeyboardVisible
          ? _self.isVirtualKeyboardVisible
          : isVirtualKeyboardVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      disableAnimations: null == disableAnimations
          ? _self.disableAnimations
          : disableAnimations // ignore: cast_nullable_to_non_nullable
              as bool,
      highContrast: null == highContrast
          ? _self.highContrast
          : highContrast // ignore: cast_nullable_to_non_nullable
              as bool,
      accessibleNavigation: null == accessibleNavigation
          ? _self.accessibleNavigation
          : accessibleNavigation // ignore: cast_nullable_to_non_nullable
              as bool,
      invertColors: null == invertColors
          ? _self.invertColors
          : invertColors // ignore: cast_nullable_to_non_nullable
              as bool,
      pluginData: null == pluginData
          ? _self.pluginData
          : pluginData // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, dynamic>>,
      textScaleFactor: null == textScaleFactor
          ? _self.textScaleFactor
          : textScaleFactor // ignore: cast_nullable_to_non_nullable
              as double,
      settings: freezed == settings
          ? _self.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as DevicePreviewSettingsData?,
      customDevice: freezed == customDevice
          ? _self.customDevice
          : customDevice // ignore: cast_nullable_to_non_nullable
              as CustomDeviceInfoData?,
      colorBlindness: null == colorBlindness
          ? _self.colorBlindness
          : colorBlindness // ignore: cast_nullable_to_non_nullable
              as ColorBlindnessType,
    ));
  }

  /// Create a copy of DevicePreviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DevicePreviewSettingsDataCopyWith<$Res>? get settings {
    if (_self.settings == null) {
      return null;
    }

    return $DevicePreviewSettingsDataCopyWith<$Res>(_self.settings!, (value) {
      return _then(_self.copyWith(settings: value));
    });
  }

  /// Create a copy of DevicePreviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomDeviceInfoDataCopyWith<$Res>? get customDevice {
    if (_self.customDevice == null) {
      return null;
    }

    return $CustomDeviceInfoDataCopyWith<$Res>(_self.customDevice!, (value) {
      return _then(_self.copyWith(customDevice: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DevicePreviewData].
extension DevicePreviewDataPatterns on DevicePreviewData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DevicePreviewData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DevicePreviewData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DevicePreviewData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isToolbarVisible,
            bool isEnabled,
            Orientation orientation,
            String? deviceIdentifier,
            String locale,
            bool isFrameVisible,
            bool isDarkMode,
            bool boldText,
            bool isVirtualKeyboardVisible,
            bool disableAnimations,
            bool highContrast,
            bool accessibleNavigation,
            bool invertColors,
            Map<String, Map<String, dynamic>> pluginData,
            double textScaleFactor,
            DevicePreviewSettingsData? settings,
            CustomDeviceInfoData? customDevice,
            ColorBlindnessType colorBlindness)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewData() when $default != null:
        return $default(
            _that.isToolbarVisible,
            _that.isEnabled,
            _that.orientation,
            _that.deviceIdentifier,
            _that.locale,
            _that.isFrameVisible,
            _that.isDarkMode,
            _that.boldText,
            _that.isVirtualKeyboardVisible,
            _that.disableAnimations,
            _that.highContrast,
            _that.accessibleNavigation,
            _that.invertColors,
            _that.pluginData,
            _that.textScaleFactor,
            _that.settings,
            _that.customDevice,
            _that.colorBlindness);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isToolbarVisible,
            bool isEnabled,
            Orientation orientation,
            String? deviceIdentifier,
            String locale,
            bool isFrameVisible,
            bool isDarkMode,
            bool boldText,
            bool isVirtualKeyboardVisible,
            bool disableAnimations,
            bool highContrast,
            bool accessibleNavigation,
            bool invertColors,
            Map<String, Map<String, dynamic>> pluginData,
            double textScaleFactor,
            DevicePreviewSettingsData? settings,
            CustomDeviceInfoData? customDevice,
            ColorBlindnessType colorBlindness)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewData():
        return $default(
            _that.isToolbarVisible,
            _that.isEnabled,
            _that.orientation,
            _that.deviceIdentifier,
            _that.locale,
            _that.isFrameVisible,
            _that.isDarkMode,
            _that.boldText,
            _that.isVirtualKeyboardVisible,
            _that.disableAnimations,
            _that.highContrast,
            _that.accessibleNavigation,
            _that.invertColors,
            _that.pluginData,
            _that.textScaleFactor,
            _that.settings,
            _that.customDevice,
            _that.colorBlindness);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isToolbarVisible,
            bool isEnabled,
            Orientation orientation,
            String? deviceIdentifier,
            String locale,
            bool isFrameVisible,
            bool isDarkMode,
            bool boldText,
            bool isVirtualKeyboardVisible,
            bool disableAnimations,
            bool highContrast,
            bool accessibleNavigation,
            bool invertColors,
            Map<String, Map<String, dynamic>> pluginData,
            double textScaleFactor,
            DevicePreviewSettingsData? settings,
            CustomDeviceInfoData? customDevice,
            ColorBlindnessType colorBlindness)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewData() when $default != null:
        return $default(
            _that.isToolbarVisible,
            _that.isEnabled,
            _that.orientation,
            _that.deviceIdentifier,
            _that.locale,
            _that.isFrameVisible,
            _that.isDarkMode,
            _that.boldText,
            _that.isVirtualKeyboardVisible,
            _that.disableAnimations,
            _that.highContrast,
            _that.accessibleNavigation,
            _that.invertColors,
            _that.pluginData,
            _that.textScaleFactor,
            _that.settings,
            _that.customDevice,
            _that.colorBlindness);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DevicePreviewData implements DevicePreviewData {
  const _DevicePreviewData(
      {this.isToolbarVisible = true,
      this.isEnabled = true,
      this.orientation = Orientation.portrait,
      this.deviceIdentifier,
      this.locale = 'en-US',
      this.isFrameVisible = true,
      this.isDarkMode = false,
      this.boldText = false,
      this.isVirtualKeyboardVisible = false,
      this.disableAnimations = false,
      this.highContrast = false,
      this.accessibleNavigation = false,
      this.invertColors = false,
      final Map<String, Map<String, dynamic>> pluginData =
          const <String, Map<String, dynamic>>{},
      this.textScaleFactor = 1.0,
      this.settings,
      this.customDevice = null,
      this.colorBlindness = ColorBlindnessType.none})
      : _pluginData = pluginData;
  factory _DevicePreviewData.fromJson(Map<String, dynamic> json) =>
      _$DevicePreviewDataFromJson(json);

  /// Indicate whether the toolbar is visible.
  @override
  @JsonKey()
  final bool isToolbarVisible;

  /// Indicate whether the device simulation is enabled.
  @override
  @JsonKey()
  final bool isEnabled;

  /// The current orientation of the device
  @override
  @JsonKey()
  final Orientation orientation;

  /// The currently selected device.
  @override
  final String? deviceIdentifier;

  /// The currently selected device locale.
  @override
  @JsonKey()
  final String locale;

  /// Indicate whether the frame is currently visible.
  @override
  @JsonKey()
  final bool isFrameVisible;

  /// Indicate whether the mode is currently dark.
  @override
  @JsonKey()
  final bool isDarkMode;

  /// Indicate whether texts are forced to bold.
  @override
  @JsonKey()
  final bool boldText;

  /// Indicate whether the virtual keyboard is visible.
  @override
  @JsonKey()
  final bool isVirtualKeyboardVisible;

  /// Indicate whether animations are disabled.
  @override
  @JsonKey()
  final bool disableAnimations;

  /// Indicate whether the highcontrast mode is activated.
  @override
  @JsonKey()
  final bool highContrast;

  /// Indicate whether the navigation is in accessible mode.
  @override
  @JsonKey()
  final bool accessibleNavigation;

  /// Indicate whether image colors are inverted.
  @override
  @JsonKey()
  final bool invertColors;

  /// Indicate whether image colors are inverted.
  final Map<String, Map<String, dynamic>> _pluginData;

  /// Indicate whether image colors are inverted.
  @override
  @JsonKey()
  Map<String, Map<String, dynamic>> get pluginData {
    if (_pluginData is EqualUnmodifiableMapView) return _pluginData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pluginData);
  }

  /// The current text scaling factor.
  @override
  @JsonKey()
  final double textScaleFactor;
  @override
  final DevicePreviewSettingsData? settings;

  /// The custom device configuration
  @override
  @JsonKey()
  final CustomDeviceInfoData? customDevice;

  /// The active color blindness simulation type.
  @override
  @JsonKey()
  final ColorBlindnessType colorBlindness;

  /// Create a copy of DevicePreviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DevicePreviewDataCopyWith<_DevicePreviewData> get copyWith =>
      __$DevicePreviewDataCopyWithImpl<_DevicePreviewData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DevicePreviewDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DevicePreviewData &&
            (identical(other.isToolbarVisible, isToolbarVisible) ||
                other.isToolbarVisible == isToolbarVisible) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.orientation, orientation) ||
                other.orientation == orientation) &&
            (identical(other.deviceIdentifier, deviceIdentifier) ||
                other.deviceIdentifier == deviceIdentifier) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isFrameVisible, isFrameVisible) ||
                other.isFrameVisible == isFrameVisible) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.boldText, boldText) ||
                other.boldText == boldText) &&
            (identical(
                    other.isVirtualKeyboardVisible, isVirtualKeyboardVisible) ||
                other.isVirtualKeyboardVisible == isVirtualKeyboardVisible) &&
            (identical(other.disableAnimations, disableAnimations) ||
                other.disableAnimations == disableAnimations) &&
            (identical(other.highContrast, highContrast) ||
                other.highContrast == highContrast) &&
            (identical(other.accessibleNavigation, accessibleNavigation) ||
                other.accessibleNavigation == accessibleNavigation) &&
            (identical(other.invertColors, invertColors) ||
                other.invertColors == invertColors) &&
            const DeepCollectionEquality()
                .equals(other._pluginData, _pluginData) &&
            (identical(other.textScaleFactor, textScaleFactor) ||
                other.textScaleFactor == textScaleFactor) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.customDevice, customDevice) ||
                other.customDevice == customDevice) &&
            (identical(other.colorBlindness, colorBlindness) ||
                other.colorBlindness == colorBlindness));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isToolbarVisible,
      isEnabled,
      orientation,
      deviceIdentifier,
      locale,
      isFrameVisible,
      isDarkMode,
      boldText,
      isVirtualKeyboardVisible,
      disableAnimations,
      highContrast,
      accessibleNavigation,
      invertColors,
      const DeepCollectionEquality().hash(_pluginData),
      textScaleFactor,
      settings,
      customDevice,
      colorBlindness);

  @override
  String toString() {
    return 'DevicePreviewData(isToolbarVisible: $isToolbarVisible, isEnabled: $isEnabled, orientation: $orientation, deviceIdentifier: $deviceIdentifier, locale: $locale, isFrameVisible: $isFrameVisible, isDarkMode: $isDarkMode, boldText: $boldText, isVirtualKeyboardVisible: $isVirtualKeyboardVisible, disableAnimations: $disableAnimations, highContrast: $highContrast, accessibleNavigation: $accessibleNavigation, invertColors: $invertColors, pluginData: $pluginData, textScaleFactor: $textScaleFactor, settings: $settings, customDevice: $customDevice, colorBlindness: $colorBlindness)';
  }
}

/// @nodoc
abstract mixin class _$DevicePreviewDataCopyWith<$Res>
    implements $DevicePreviewDataCopyWith<$Res> {
  factory _$DevicePreviewDataCopyWith(
          _DevicePreviewData value, $Res Function(_DevicePreviewData) _then) =
      __$DevicePreviewDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isToolbarVisible,
      bool isEnabled,
      Orientation orientation,
      String? deviceIdentifier,
      String locale,
      bool isFrameVisible,
      bool isDarkMode,
      bool boldText,
      bool isVirtualKeyboardVisible,
      bool disableAnimations,
      bool highContrast,
      bool accessibleNavigation,
      bool invertColors,
      Map<String, Map<String, dynamic>> pluginData,
      double textScaleFactor,
      DevicePreviewSettingsData? settings,
      CustomDeviceInfoData? customDevice,
      ColorBlindnessType colorBlindness});

  @override
  $DevicePreviewSettingsDataCopyWith<$Res>? get settings;
  @override
  $CustomDeviceInfoDataCopyWith<$Res>? get customDevice;
}

/// @nodoc
class __$DevicePreviewDataCopyWithImpl<$Res>
    implements _$DevicePreviewDataCopyWith<$Res> {
  __$DevicePreviewDataCopyWithImpl(this._self, this._then);

  final _DevicePreviewData _self;
  final $Res Function(_DevicePreviewData) _then;

  /// Create a copy of DevicePreviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isToolbarVisible = null,
    Object? isEnabled = null,
    Object? orientation = null,
    Object? deviceIdentifier = freezed,
    Object? locale = null,
    Object? isFrameVisible = null,
    Object? isDarkMode = null,
    Object? boldText = null,
    Object? isVirtualKeyboardVisible = null,
    Object? disableAnimations = null,
    Object? highContrast = null,
    Object? accessibleNavigation = null,
    Object? invertColors = null,
    Object? pluginData = null,
    Object? textScaleFactor = null,
    Object? settings = freezed,
    Object? customDevice = freezed,
    Object? colorBlindness = null,
  }) {
    return _then(_DevicePreviewData(
      isToolbarVisible: null == isToolbarVisible
          ? _self.isToolbarVisible
          : isToolbarVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: null == isEnabled
          ? _self.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      orientation: null == orientation
          ? _self.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation,
      deviceIdentifier: freezed == deviceIdentifier
          ? _self.deviceIdentifier
          : deviceIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      isFrameVisible: null == isFrameVisible
          ? _self.isFrameVisible
          : isFrameVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: null == isDarkMode
          ? _self.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      boldText: null == boldText
          ? _self.boldText
          : boldText // ignore: cast_nullable_to_non_nullable
              as bool,
      isVirtualKeyboardVisible: null == isVirtualKeyboardVisible
          ? _self.isVirtualKeyboardVisible
          : isVirtualKeyboardVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      disableAnimations: null == disableAnimations
          ? _self.disableAnimations
          : disableAnimations // ignore: cast_nullable_to_non_nullable
              as bool,
      highContrast: null == highContrast
          ? _self.highContrast
          : highContrast // ignore: cast_nullable_to_non_nullable
              as bool,
      accessibleNavigation: null == accessibleNavigation
          ? _self.accessibleNavigation
          : accessibleNavigation // ignore: cast_nullable_to_non_nullable
              as bool,
      invertColors: null == invertColors
          ? _self.invertColors
          : invertColors // ignore: cast_nullable_to_non_nullable
              as bool,
      pluginData: null == pluginData
          ? _self._pluginData
          : pluginData // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, dynamic>>,
      textScaleFactor: null == textScaleFactor
          ? _self.textScaleFactor
          : textScaleFactor // ignore: cast_nullable_to_non_nullable
              as double,
      settings: freezed == settings
          ? _self.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as DevicePreviewSettingsData?,
      customDevice: freezed == customDevice
          ? _self.customDevice
          : customDevice // ignore: cast_nullable_to_non_nullable
              as CustomDeviceInfoData?,
      colorBlindness: null == colorBlindness
          ? _self.colorBlindness
          : colorBlindness // ignore: cast_nullable_to_non_nullable
              as ColorBlindnessType,
    ));
  }

  /// Create a copy of DevicePreviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DevicePreviewSettingsDataCopyWith<$Res>? get settings {
    if (_self.settings == null) {
      return null;
    }

    return $DevicePreviewSettingsDataCopyWith<$Res>(_self.settings!, (value) {
      return _then(_self.copyWith(settings: value));
    });
  }

  /// Create a copy of DevicePreviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomDeviceInfoDataCopyWith<$Res>? get customDevice {
    if (_self.customDevice == null) {
      return null;
    }

    return $CustomDeviceInfoDataCopyWith<$Res>(_self.customDevice!, (value) {
      return _then(_self.copyWith(customDevice: value));
    });
  }
}

/// @nodoc
mixin _$CustomDeviceInfoData {
  /// Identifier of the device.
  String get id;

  /// The device type.
  DeviceType get type;

  /// The device operating system.
  TargetPlatform get platform;

  /// The display name of the device.
  String get name;

  /// The safe areas when the device is in landscape orientation.
  @NullableEdgeInsetsJsonConverter()
  EdgeInsets? get rotatedSafeAreas;

  /// The safe areas when the device is in portrait orientation.
  @EdgeInsetsJsonConverter()
  EdgeInsets get safeAreas;

  /// The screen pixel density of the device.
  double get pixelRatio;

  /// The size in points of the screen content.
  @SizeJsonConverter()
  Size get screenSize;

  /// Create a copy of CustomDeviceInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomDeviceInfoDataCopyWith<CustomDeviceInfoData> get copyWith =>
      _$CustomDeviceInfoDataCopyWithImpl<CustomDeviceInfoData>(
          this as CustomDeviceInfoData, _$identity);

  /// Serializes this CustomDeviceInfoData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomDeviceInfoData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rotatedSafeAreas, rotatedSafeAreas) ||
                other.rotatedSafeAreas == rotatedSafeAreas) &&
            (identical(other.safeAreas, safeAreas) ||
                other.safeAreas == safeAreas) &&
            (identical(other.pixelRatio, pixelRatio) ||
                other.pixelRatio == pixelRatio) &&
            (identical(other.screenSize, screenSize) ||
                other.screenSize == screenSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, platform, name,
      rotatedSafeAreas, safeAreas, pixelRatio, screenSize);

  @override
  String toString() {
    return 'CustomDeviceInfoData(id: $id, type: $type, platform: $platform, name: $name, rotatedSafeAreas: $rotatedSafeAreas, safeAreas: $safeAreas, pixelRatio: $pixelRatio, screenSize: $screenSize)';
  }
}

/// @nodoc
abstract mixin class $CustomDeviceInfoDataCopyWith<$Res> {
  factory $CustomDeviceInfoDataCopyWith(CustomDeviceInfoData value,
          $Res Function(CustomDeviceInfoData) _then) =
      _$CustomDeviceInfoDataCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      DeviceType type,
      TargetPlatform platform,
      String name,
      @NullableEdgeInsetsJsonConverter() EdgeInsets? rotatedSafeAreas,
      @EdgeInsetsJsonConverter() EdgeInsets safeAreas,
      double pixelRatio,
      @SizeJsonConverter() Size screenSize});
}

/// @nodoc
class _$CustomDeviceInfoDataCopyWithImpl<$Res>
    implements $CustomDeviceInfoDataCopyWith<$Res> {
  _$CustomDeviceInfoDataCopyWithImpl(this._self, this._then);

  final CustomDeviceInfoData _self;
  final $Res Function(CustomDeviceInfoData) _then;

  /// Create a copy of CustomDeviceInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? platform = null,
    Object? name = null,
    Object? rotatedSafeAreas = freezed,
    Object? safeAreas = null,
    Object? pixelRatio = null,
    Object? screenSize = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as TargetPlatform,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rotatedSafeAreas: freezed == rotatedSafeAreas
          ? _self.rotatedSafeAreas
          : rotatedSafeAreas // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      safeAreas: null == safeAreas
          ? _self.safeAreas
          : safeAreas // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      pixelRatio: null == pixelRatio
          ? _self.pixelRatio
          : pixelRatio // ignore: cast_nullable_to_non_nullable
              as double,
      screenSize: null == screenSize
          ? _self.screenSize
          : screenSize // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }
}

/// Adds pattern-matching-related methods to [CustomDeviceInfoData].
extension CustomDeviceInfoDataPatterns on CustomDeviceInfoData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CustomDeviceInfoData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomDeviceInfoData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CustomDeviceInfoData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomDeviceInfoData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CustomDeviceInfoData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomDeviceInfoData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            DeviceType type,
            TargetPlatform platform,
            String name,
            @NullableEdgeInsetsJsonConverter() EdgeInsets? rotatedSafeAreas,
            @EdgeInsetsJsonConverter() EdgeInsets safeAreas,
            double pixelRatio,
            @SizeJsonConverter() Size screenSize)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CustomDeviceInfoData() when $default != null:
        return $default(
            _that.id,
            _that.type,
            _that.platform,
            _that.name,
            _that.rotatedSafeAreas,
            _that.safeAreas,
            _that.pixelRatio,
            _that.screenSize);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            DeviceType type,
            TargetPlatform platform,
            String name,
            @NullableEdgeInsetsJsonConverter() EdgeInsets? rotatedSafeAreas,
            @EdgeInsetsJsonConverter() EdgeInsets safeAreas,
            double pixelRatio,
            @SizeJsonConverter() Size screenSize)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomDeviceInfoData():
        return $default(
            _that.id,
            _that.type,
            _that.platform,
            _that.name,
            _that.rotatedSafeAreas,
            _that.safeAreas,
            _that.pixelRatio,
            _that.screenSize);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            DeviceType type,
            TargetPlatform platform,
            String name,
            @NullableEdgeInsetsJsonConverter() EdgeInsets? rotatedSafeAreas,
            @EdgeInsetsJsonConverter() EdgeInsets safeAreas,
            double pixelRatio,
            @SizeJsonConverter() Size screenSize)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CustomDeviceInfoData() when $default != null:
        return $default(
            _that.id,
            _that.type,
            _that.platform,
            _that.name,
            _that.rotatedSafeAreas,
            _that.safeAreas,
            _that.pixelRatio,
            _that.screenSize);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CustomDeviceInfoData implements CustomDeviceInfoData {
  const _CustomDeviceInfoData(
      {required this.id,
      required this.type,
      required this.platform,
      required this.name,
      @NullableEdgeInsetsJsonConverter() this.rotatedSafeAreas = null,
      @EdgeInsetsJsonConverter() required this.safeAreas,
      required this.pixelRatio,
      @SizeJsonConverter() required this.screenSize});
  factory _CustomDeviceInfoData.fromJson(Map<String, dynamic> json) =>
      _$CustomDeviceInfoDataFromJson(json);

  /// Identifier of the device.
  @override
  final String id;

  /// The device type.
  @override
  final DeviceType type;

  /// The device operating system.
  @override
  final TargetPlatform platform;

  /// The display name of the device.
  @override
  final String name;

  /// The safe areas when the device is in landscape orientation.
  @override
  @JsonKey()
  @NullableEdgeInsetsJsonConverter()
  final EdgeInsets? rotatedSafeAreas;

  /// The safe areas when the device is in portrait orientation.
  @override
  @EdgeInsetsJsonConverter()
  final EdgeInsets safeAreas;

  /// The screen pixel density of the device.
  @override
  final double pixelRatio;

  /// The size in points of the screen content.
  @override
  @SizeJsonConverter()
  final Size screenSize;

  /// Create a copy of CustomDeviceInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomDeviceInfoDataCopyWith<_CustomDeviceInfoData> get copyWith =>
      __$CustomDeviceInfoDataCopyWithImpl<_CustomDeviceInfoData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomDeviceInfoDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomDeviceInfoData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rotatedSafeAreas, rotatedSafeAreas) ||
                other.rotatedSafeAreas == rotatedSafeAreas) &&
            (identical(other.safeAreas, safeAreas) ||
                other.safeAreas == safeAreas) &&
            (identical(other.pixelRatio, pixelRatio) ||
                other.pixelRatio == pixelRatio) &&
            (identical(other.screenSize, screenSize) ||
                other.screenSize == screenSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, platform, name,
      rotatedSafeAreas, safeAreas, pixelRatio, screenSize);

  @override
  String toString() {
    return 'CustomDeviceInfoData(id: $id, type: $type, platform: $platform, name: $name, rotatedSafeAreas: $rotatedSafeAreas, safeAreas: $safeAreas, pixelRatio: $pixelRatio, screenSize: $screenSize)';
  }
}

/// @nodoc
abstract mixin class _$CustomDeviceInfoDataCopyWith<$Res>
    implements $CustomDeviceInfoDataCopyWith<$Res> {
  factory _$CustomDeviceInfoDataCopyWith(_CustomDeviceInfoData value,
          $Res Function(_CustomDeviceInfoData) _then) =
      __$CustomDeviceInfoDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      DeviceType type,
      TargetPlatform platform,
      String name,
      @NullableEdgeInsetsJsonConverter() EdgeInsets? rotatedSafeAreas,
      @EdgeInsetsJsonConverter() EdgeInsets safeAreas,
      double pixelRatio,
      @SizeJsonConverter() Size screenSize});
}

/// @nodoc
class __$CustomDeviceInfoDataCopyWithImpl<$Res>
    implements _$CustomDeviceInfoDataCopyWith<$Res> {
  __$CustomDeviceInfoDataCopyWithImpl(this._self, this._then);

  final _CustomDeviceInfoData _self;
  final $Res Function(_CustomDeviceInfoData) _then;

  /// Create a copy of CustomDeviceInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? platform = null,
    Object? name = null,
    Object? rotatedSafeAreas = freezed,
    Object? safeAreas = null,
    Object? pixelRatio = null,
    Object? screenSize = null,
  }) {
    return _then(_CustomDeviceInfoData(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeviceType,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as TargetPlatform,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rotatedSafeAreas: freezed == rotatedSafeAreas
          ? _self.rotatedSafeAreas
          : rotatedSafeAreas // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      safeAreas: null == safeAreas
          ? _self.safeAreas
          : safeAreas // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      pixelRatio: null == pixelRatio
          ? _self.pixelRatio
          : pixelRatio // ignore: cast_nullable_to_non_nullable
              as double,
      screenSize: null == screenSize
          ? _self.screenSize
          : screenSize // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }
}

/// @nodoc
mixin _$DevicePreviewSettingsData {
  /// The toolbar position.
  DevicePreviewToolBarPositionData get toolbarPosition;

  /// The theme of the toolbar.
  DevicePreviewToolBarThemeData get toolbarTheme;

  /// The theme of the background.
  DevicePreviewBackgroundThemeData get backgroundTheme;

  /// Create a copy of DevicePreviewSettingsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DevicePreviewSettingsDataCopyWith<DevicePreviewSettingsData> get copyWith =>
      _$DevicePreviewSettingsDataCopyWithImpl<DevicePreviewSettingsData>(
          this as DevicePreviewSettingsData, _$identity);

  /// Serializes this DevicePreviewSettingsData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DevicePreviewSettingsData &&
            (identical(other.toolbarPosition, toolbarPosition) ||
                other.toolbarPosition == toolbarPosition) &&
            (identical(other.toolbarTheme, toolbarTheme) ||
                other.toolbarTheme == toolbarTheme) &&
            (identical(other.backgroundTheme, backgroundTheme) ||
                other.backgroundTheme == backgroundTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, toolbarPosition, toolbarTheme, backgroundTheme);

  @override
  String toString() {
    return 'DevicePreviewSettingsData(toolbarPosition: $toolbarPosition, toolbarTheme: $toolbarTheme, backgroundTheme: $backgroundTheme)';
  }
}

/// @nodoc
abstract mixin class $DevicePreviewSettingsDataCopyWith<$Res> {
  factory $DevicePreviewSettingsDataCopyWith(DevicePreviewSettingsData value,
          $Res Function(DevicePreviewSettingsData) _then) =
      _$DevicePreviewSettingsDataCopyWithImpl;
  @useResult
  $Res call(
      {DevicePreviewToolBarPositionData toolbarPosition,
      DevicePreviewToolBarThemeData toolbarTheme,
      DevicePreviewBackgroundThemeData backgroundTheme});
}

/// @nodoc
class _$DevicePreviewSettingsDataCopyWithImpl<$Res>
    implements $DevicePreviewSettingsDataCopyWith<$Res> {
  _$DevicePreviewSettingsDataCopyWithImpl(this._self, this._then);

  final DevicePreviewSettingsData _self;
  final $Res Function(DevicePreviewSettingsData) _then;

  /// Create a copy of DevicePreviewSettingsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toolbarPosition = null,
    Object? toolbarTheme = null,
    Object? backgroundTheme = null,
  }) {
    return _then(_self.copyWith(
      toolbarPosition: null == toolbarPosition
          ? _self.toolbarPosition
          : toolbarPosition // ignore: cast_nullable_to_non_nullable
              as DevicePreviewToolBarPositionData,
      toolbarTheme: null == toolbarTheme
          ? _self.toolbarTheme
          : toolbarTheme // ignore: cast_nullable_to_non_nullable
              as DevicePreviewToolBarThemeData,
      backgroundTheme: null == backgroundTheme
          ? _self.backgroundTheme
          : backgroundTheme // ignore: cast_nullable_to_non_nullable
              as DevicePreviewBackgroundThemeData,
    ));
  }
}

/// Adds pattern-matching-related methods to [DevicePreviewSettingsData].
extension DevicePreviewSettingsDataPatterns on DevicePreviewSettingsData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DevicePreviewSettingsData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewSettingsData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DevicePreviewSettingsData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewSettingsData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DevicePreviewSettingsData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewSettingsData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            DevicePreviewToolBarPositionData toolbarPosition,
            DevicePreviewToolBarThemeData toolbarTheme,
            DevicePreviewBackgroundThemeData backgroundTheme)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewSettingsData() when $default != null:
        return $default(
            _that.toolbarPosition, _that.toolbarTheme, _that.backgroundTheme);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            DevicePreviewToolBarPositionData toolbarPosition,
            DevicePreviewToolBarThemeData toolbarTheme,
            DevicePreviewBackgroundThemeData backgroundTheme)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewSettingsData():
        return $default(
            _that.toolbarPosition, _that.toolbarTheme, _that.backgroundTheme);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            DevicePreviewToolBarPositionData toolbarPosition,
            DevicePreviewToolBarThemeData toolbarTheme,
            DevicePreviewBackgroundThemeData backgroundTheme)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DevicePreviewSettingsData() when $default != null:
        return $default(
            _that.toolbarPosition, _that.toolbarTheme, _that.backgroundTheme);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DevicePreviewSettingsData implements DevicePreviewSettingsData {
  const _DevicePreviewSettingsData(
      {this.toolbarPosition = DevicePreviewToolBarPositionData.bottom,
      this.toolbarTheme = DevicePreviewToolBarThemeData.dark,
      this.backgroundTheme = DevicePreviewBackgroundThemeData.light});
  factory _DevicePreviewSettingsData.fromJson(Map<String, dynamic> json) =>
      _$DevicePreviewSettingsDataFromJson(json);

  /// The toolbar position.
  @override
  @JsonKey()
  final DevicePreviewToolBarPositionData toolbarPosition;

  /// The theme of the toolbar.
  @override
  @JsonKey()
  final DevicePreviewToolBarThemeData toolbarTheme;

  /// The theme of the background.
  @override
  @JsonKey()
  final DevicePreviewBackgroundThemeData backgroundTheme;

  /// Create a copy of DevicePreviewSettingsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DevicePreviewSettingsDataCopyWith<_DevicePreviewSettingsData>
      get copyWith =>
          __$DevicePreviewSettingsDataCopyWithImpl<_DevicePreviewSettingsData>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DevicePreviewSettingsDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DevicePreviewSettingsData &&
            (identical(other.toolbarPosition, toolbarPosition) ||
                other.toolbarPosition == toolbarPosition) &&
            (identical(other.toolbarTheme, toolbarTheme) ||
                other.toolbarTheme == toolbarTheme) &&
            (identical(other.backgroundTheme, backgroundTheme) ||
                other.backgroundTheme == backgroundTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, toolbarPosition, toolbarTheme, backgroundTheme);

  @override
  String toString() {
    return 'DevicePreviewSettingsData(toolbarPosition: $toolbarPosition, toolbarTheme: $toolbarTheme, backgroundTheme: $backgroundTheme)';
  }
}

/// @nodoc
abstract mixin class _$DevicePreviewSettingsDataCopyWith<$Res>
    implements $DevicePreviewSettingsDataCopyWith<$Res> {
  factory _$DevicePreviewSettingsDataCopyWith(_DevicePreviewSettingsData value,
          $Res Function(_DevicePreviewSettingsData) _then) =
      __$DevicePreviewSettingsDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DevicePreviewToolBarPositionData toolbarPosition,
      DevicePreviewToolBarThemeData toolbarTheme,
      DevicePreviewBackgroundThemeData backgroundTheme});
}

/// @nodoc
class __$DevicePreviewSettingsDataCopyWithImpl<$Res>
    implements _$DevicePreviewSettingsDataCopyWith<$Res> {
  __$DevicePreviewSettingsDataCopyWithImpl(this._self, this._then);

  final _DevicePreviewSettingsData _self;
  final $Res Function(_DevicePreviewSettingsData) _then;

  /// Create a copy of DevicePreviewSettingsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? toolbarPosition = null,
    Object? toolbarTheme = null,
    Object? backgroundTheme = null,
  }) {
    return _then(_DevicePreviewSettingsData(
      toolbarPosition: null == toolbarPosition
          ? _self.toolbarPosition
          : toolbarPosition // ignore: cast_nullable_to_non_nullable
              as DevicePreviewToolBarPositionData,
      toolbarTheme: null == toolbarTheme
          ? _self.toolbarTheme
          : toolbarTheme // ignore: cast_nullable_to_non_nullable
              as DevicePreviewToolBarThemeData,
      backgroundTheme: null == backgroundTheme
          ? _self.backgroundTheme
          : backgroundTheme // ignore: cast_nullable_to_non_nullable
              as DevicePreviewBackgroundThemeData,
    ));
  }
}

// dart format on
