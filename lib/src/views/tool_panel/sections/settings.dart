import '/device_preview_shot.dart';
import '/src/views/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// All the settings for customizing the preview.
class SettingsSection extends StatelessWidget {
  /// Create a new menu section with settings for customizing the preview.
  ///
  /// The items can be hidden with [backgroundTheme], [toolsTheme] parameters.
  const SettingsSection({
    super.key,
    this.backgroundTheme = true,
    this.toolsTheme = true,
  });

  /// Allow to edit the current background theme.
  final bool backgroundTheme;

  /// Allow to edit the current toolbar theme.
  final bool toolsTheme;

  @override
  Widget build(BuildContext context) {
    final backgroundTheme = context.select(
      (DevicePreviewStore store) => store.settings.backgroundTheme,
    );
    final toolbarTheme = context.select(
      (DevicePreviewStore store) => store.settings.toolbarTheme,
    );
    final background = backgroundTheme.asThemeData();
    final toolbar = toolbarTheme.asThemeData();

    return ToolPanelSection(
      title: 'Preview settings',
      children: [
        if (this.backgroundTheme)
          ListTile(
            key: const Key('background-theme'),
            title: const Text('Background'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _ThemeIndicator(
                  color: background.scaffoldBackgroundColor,
                  borderColor: toolbar.colorScheme.surface,
                  isDark:
                      backgroundTheme == DevicePreviewBackgroundThemeData.dark,
                ),
                const SizedBox(width: 8),
                Switch(
                  value:
                      backgroundTheme == DevicePreviewBackgroundThemeData.dark,
                  onChanged: (v) {
                    final state = context.read<DevicePreviewStore>();
                    state.settings = state.settings.copyWith(
                      backgroundTheme: v
                          ? DevicePreviewBackgroundThemeData.dark
                          : DevicePreviewBackgroundThemeData.light,
                    );
                  },
                ),
              ],
            ),
          ),
        if (toolsTheme)
          ListTile(
            key: const Key('toolbar-theme'),
            title: const Text('Tools theme'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _ThemeIndicator(
                  color: toolbar.scaffoldBackgroundColor,
                  borderColor: toolbar.colorScheme.surface,
                  isDark: toolbarTheme == DevicePreviewToolBarThemeData.dark,
                ),
                const SizedBox(width: 8),
                Switch(
                  value: toolbarTheme == DevicePreviewToolBarThemeData.dark,
                  onChanged: (v) {
                    final state = context.read<DevicePreviewStore>();
                    state.settings = state.settings.copyWith(
                      toolbarTheme: v
                          ? DevicePreviewToolBarThemeData.dark
                          : DevicePreviewToolBarThemeData.light,
                    );
                  },
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _ThemeIndicator extends StatelessWidget {
  const _ThemeIndicator({
    required this.color,
    required this.borderColor,
    required this.isDark,
  });

  final Color color;
  final Color borderColor;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(
          color: isDark
              ? kAccentColor.withValues(alpha: 0.4)
              : const Color(0xFFCCCCDD),
          width: 1.5,
        ),
        boxShadow: isDark
            ? [
                BoxShadow(
                  color: kAccentColor.withValues(alpha: 0.15),
                  blurRadius: 6,
                ),
              ]
            : null,
      ),
      child: Icon(
        isDark ? Icons.dark_mode_rounded : Icons.light_mode_rounded,
        size: 12,
        color: isDark ? kAccentColor : const Color(0xFFFFAB40),
      ),
    );
  }
}
