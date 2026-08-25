import '/src/state/store.dart';
import '/src/views/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'tool_panel/tool_panel.dart';

/// The tool layout when the screen is small.
class DevicePreviewSmallLayout extends StatelessWidget {
  /// Create a new panel from the given tools grouped as [slivers].
  const DevicePreviewSmallLayout({
    super.key,
    required this.maxMenuHeight,
    required this.scaffoldKey,
    required this.onMenuVisibleChanged,
    required this.slivers,
  });

  /// The maximum modal menu height.
  final double maxMenuHeight;

  /// The key of the [Scaffold] that must be used to show the modal menu.
  final GlobalKey<ScaffoldState> scaffoldKey;

  /// Invoked each time the menu is shown or hidden.
  final ValueChanged<bool> onMenuVisibleChanged;

  /// The sections containing the tools.
  ///
  /// They must be [Sliver]s.
  final List<Widget> slivers;

  @override
  Widget build(BuildContext context) {
    final toolbarTheme = context.select(
      (DevicePreviewStore store) => store.settings.toolbarTheme,
    );
    return Theme(
      data: toolbarTheme.asThemeData(),
      child: SafeArea(
        top: false,
        child: _BottomToolbar(
          showPanel: () async {
            onMenuVisibleChanged(true);
            final sheet = scaffoldKey.currentState?.showBottomSheet(
              (context) => ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: ToolPanel(
                  isModal: true,
                  slivers: slivers,
                ),
              ),
              constraints: BoxConstraints(
                maxHeight: maxMenuHeight,
              ),
              backgroundColor: Colors.transparent,
            );
            await sheet?.closed;
            onMenuVisibleChanged(false);
          },
        ),
      ),
    );
  }
}

class _BottomToolbar extends StatelessWidget {
  const _BottomToolbar({
    required this.showPanel,
  });

  final VoidCallback showPanel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isEnabled = context.select(
      (DevicePreviewStore store) => store.data.isEnabled,
    );

    return Container(
      decoration: BoxDecoration(
        color: isDark ? kSurfaceDark : Colors.white,
        border: Border(
          top: BorderSide(
            color: isDark ? kBorderDark : const Color(0xFFE0E4EA),
            width: 0.5,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          title: Row(
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                    colors: [kAccentColor, Color(0xFF0097A7)],
                  ),
                ),
                child: const Icon(
                  Icons.devices_rounded,
                  color: Colors.white,
                  size: 14,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Device Preview',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          onTap: isEnabled ? showPanel : null,
          trailing: Switch(
            value: isEnabled,
            onChanged: (v) {
              final state = context.read<DevicePreviewStore>();
              state.data = state.data.copyWith(isEnabled: v);
            },
          ),
        ),
      ),
    );
  }
}
