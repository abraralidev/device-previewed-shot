// ignore_for_file: deprecated_member_use

import '../../../../device_preview_shot.dart';
import '/src/views/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


/// All the simulated accessibility settings.
class AccessibilitySection extends StatelessWidget {
  /// Create a new menu section with simulated accessibility settings.
  ///
  /// The items can be hidden with [accessibleNavigation], [invertColors],
  /// [textScalingFactor] parameters.
  const AccessibilitySection({
    super.key,
    this.accessibleNavigation = true,
    this.invertColors = true,
    this.textScalingFactor = true,
    this.boldText = true,
    this.colorBlindness = true,
  });

  /// Allow to enable accessible navigation mode.
  final bool accessibleNavigation;

  /// Allow to enable invert color mode.
  final bool invertColors;

  /// Allow to edit the current text scaling factor.
  final bool textScalingFactor;

  /// Allow to edit the current text weight.
  final bool boldText;

  /// Allow to enable color blindness mode.
  final bool colorBlindness;

  @override
  Widget build(BuildContext context) {
    final currentTextScale = context.select(
      (DevicePreviewStore store) => store.data.textScaleFactor,
    );
    final boldText = context.select(
      (DevicePreviewStore store) => store.data.boldText,
    );
    final accessibleNavigation = context.select(
      (DevicePreviewStore store) => store.data.accessibleNavigation,
    );
    final invertColors = context.select(
      (DevicePreviewStore store) => store.data.invertColors,
    );
    final colorBlindnessType = context.select(
      (DevicePreviewStore store) => store.data.colorBlindness,
    );
    return ToolPanelSection(
      title: 'Accessibility',
      children: [
        if (this.accessibleNavigation)
          ListTile(
            key: const Key('accessible-navigation'),
            title: const Text('Accessible navigation'),
            trailing: Switch(
              value: accessibleNavigation,
              onChanged: (v) {
                final state = context.read<DevicePreviewStore>();
                state.data = state.data.copyWith(
                  accessibleNavigation: v,
                );
              },
            ),
          ),
        if (this.invertColors)
          ListTile(
            key: const Key('invert-colors'),
            title: const Text('Invert colors'),
            trailing: Switch(
              value: invertColors,
              onChanged: (v) {
                final state = context.read<DevicePreviewStore>();
                state.data = state.data.copyWith(
                  invertColors: v,
                );
              },
            ),
          ),
        if (this.boldText)
          ListTile(
            key: const Key('bold-text'),
            title: const Text('Bold text'),
            trailing: Switch(
              value: boldText,
              onChanged: (v) {
                final state = context.read<DevicePreviewStore>();
                state.data = state.data.copyWith(
                  boldText: v,
                );
              },
            ),
          ),
        if (textScalingFactor) ...[
          ListTile(
            key: const Key('text-scaling-factor'),
            title: const Text('Text scale'),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: kAccentColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: kAccentColor.withValues(alpha: 0.2),
                  width: 0.5,
                ),
              ),
              child: Text(
                '${currentTextScale.toStringAsFixed(1)}x',
                style: const TextStyle(
                  color: kAccentColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 3,
              ),
              child: Slider(
                value: currentTextScale,
                onChanged: (v) {
                  final state = context.read<DevicePreviewStore>();
                  state.data = state.data.copyWith(textScaleFactor: v);
                },
                min: 0.25,
                max: 3,
                divisions: 11,
              ),
            ),
          ),
        ],
        if (colorBlindness)
          ListTile(
            key: const Key('color-blindness'),
            title: const Text('Color blindness'),
            subtitle: Text(_colorBlindnessName(colorBlindnessType)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.remove_red_eye_rounded,
                  size: 18,
                  color: colorBlindnessType != ColorBlindnessType.none
                      ? kAccentColor.withValues(alpha: 0.8)
                      : kMutedText,
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.chevron_right_rounded,
                  size: 18,
                  color: kMutedText,
                ),
              ],
            ),
            onTap: () async {
              final type = await showDialog<ColorBlindnessType>(
                context: context,
                builder: (context) => _ColorBlindnessDialog(
                  currentType: colorBlindnessType,
                ),
              );
              if (type != null && context.mounted) {
                final state = context.read<DevicePreviewStore>();
                state.data = state.data.copyWith(
                  colorBlindness: type,
                );
              }
            },
          ),
      ],
    );
  }

  String _colorBlindnessName(ColorBlindnessType type) {
    switch (type) {
      case ColorBlindnessType.none:
        return 'None';
      case ColorBlindnessType.protanopia:
        return 'Protanopia (Red-blind)';
      case ColorBlindnessType.deuteranopia:
        return 'Deuteranopia (Green-blind)';
      case ColorBlindnessType.tritanopia:
        return 'Tritanopia (Blue-blind)';
      case ColorBlindnessType.achromatopsia:
        return 'Achromatopsia (Monochromacy)';
    }
  }
}

class _ColorBlindnessDialog extends StatelessWidget {
  const _ColorBlindnessDialog({required this.currentType});

  final ColorBlindnessType currentType;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SimpleDialog(
      title: Row(
        children: [
          Icon(Icons.remove_red_eye_rounded, color: kAccentColor, size: 20),
          const SizedBox(width: 8),
          const Text('Color Blindness'),
        ],
      ),
      children: ColorBlindnessType.values.map((t) {
        final isSelected = t == currentType;
        return SimpleDialogOption(
          onPressed: () => Navigator.pop(context, t),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: isSelected
                  ? kAccentColor.withValues(alpha: 0.1)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: isSelected
                  ? Border.all(
                      color: kAccentColor.withValues(alpha: 0.3),
                      width: 0.5,
                    )
                  : null,
            ),
            child: Row(
              children: [
                if (isSelected)
                  const Icon(Icons.check_rounded,
                      color: kAccentColor, size: 16)
                else
                  const SizedBox(width: 16),
                const SizedBox(width: 8),
                Text(
                  _nameFor(t),
                  style: TextStyle(
                    color: isSelected
                        ? kAccentColor
                        : theme.textTheme.bodyMedium?.color,
                    fontWeight:
                        isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  String _nameFor(ColorBlindnessType type) {
    switch (type) {
      case ColorBlindnessType.none:
        return 'None';
      case ColorBlindnessType.protanopia:
        return 'Protanopia (Red-blind)';
      case ColorBlindnessType.deuteranopia:
        return 'Deuteranopia (Green-blind)';
      case ColorBlindnessType.tritanopia:
        return 'Tritanopia (Blue-blind)';
      case ColorBlindnessType.achromatopsia:
        return 'Achromatopsia (Monochromacy)';
    }
  }
}
