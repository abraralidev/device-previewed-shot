import '/src/state/store.dart';
import '/src/views/tool_panel/sections/subsections/locale.dart';
import '/src/views/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'section.dart';

/// All the simulated system settings.
class SystemSection extends StatelessWidget {
  /// Create a new menu section with simulated systel properties.
  ///
  /// The items can be hidden with [locale], [theme] parameters.
  const SystemSection({
    super.key,
    this.locale = true,
    this.theme = true,
  });

  /// Allow to select the current device locale.
  final bool locale;

  /// Allow to override the current system theme (dark/light)
  final bool theme;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.select(
      (DevicePreviewStore store) => store.data.isDarkMode,
    );

    final locales = context.select(
      (DevicePreviewStore store) => store.locales,
    );

    final selectedLocale = locales.firstWhere(
      (element) =>
          element.code ==
          context.select(
            (DevicePreviewStore store) => store.data.locale,
          ),
      orElse: () => locales.first,
    );

    return ToolPanelSection(
      title: 'System',
      children: [
        if (locale)
          ListTile(
            key: const Key('locale'),
            title: const Text('Locale'),
            subtitle: Text(selectedLocale.name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.language_rounded,
                  size: 18,
                  color: kAccentColor.withValues(alpha: 0.8),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.chevron_right_rounded,
                  size: 18,
                  color: kMutedText,
                ),
              ],
            ),
            onTap: () {
              final theme = Theme.of(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Theme(
                    data: theme,
                    child: const LocalePicker(),
                  ),
                ),
              );
            },
          ),
        if (theme)
          ListTile(
            key: const Key('theme'),
            title: const Text('Dark mode'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  transitionBuilder: (child, animation) => RotationTransition(
                    turns: Tween(begin: 0.75, end: 1.0).animate(animation),
                    child: FadeTransition(opacity: animation, child: child),
                  ),
                  child: Icon(
                    isDarkMode
                        ? Icons.dark_mode_rounded
                        : Icons.light_mode_rounded,
                    key: ValueKey(isDarkMode),
                    size: 18,
                    color: isDarkMode
                        ? kAccentColor.withValues(alpha: 0.8)
                        : const Color(0xFFFFAB40),
                  ),
                ),
                const SizedBox(width: 8),
                Switch(
                  value: isDarkMode,
                  onChanged: (v) {
                    final state = context.read<DevicePreviewStore>();
                    state.toggleDarkMode();
                  },
                ),
              ],
            ),
          ),
      ],
    );
  }
}
