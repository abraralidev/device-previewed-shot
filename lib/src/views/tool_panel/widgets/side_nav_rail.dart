import 'package:flutter/material.dart';
import '/src/views/theme.dart';

/// The side navigation rail for the tool panel.
///
/// Shows icon buttons for each tool section, with the selected
/// section highlighted with an accent glow.
class SideNavRail extends StatelessWidget {
  /// Creates a side navigation rail.
  const SideNavRail({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
    required this.sectionCount,
    required this.isEnabled,
    required this.onEnabledChanged,
  });

  /// The currently selected section index.
  final int selectedIndex;

  /// Called when a section icon is tapped.
  final ValueChanged<int> onSelected;

  /// How many sections there are.
  final int sectionCount;

  /// Whether the device preview is currently enabled.
  final bool isEnabled;

  /// Called when the enable/disable toggle changes.
  final ValueChanged<bool> onEnabledChanged;

  static const double railWidth = 56;

  static const List<_NavItem> _items = [
    _NavItem(icon: Icons.phone_android_rounded, label: 'Device'),
    _NavItem(icon: Icons.settings_rounded, label: 'System'),
    _NavItem(icon: Icons.accessibility_new_rounded, label: 'Access'),
    _NavItem(icon: Icons.palette_rounded, label: 'Settings'),
    _NavItem(icon: Icons.camera_alt_rounded, label: 'Screenshot'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final bgColor = isDark ? kBackgroundDark : const Color(0xFFF0F2F5);
    final borderColor = isDark ? kBorderDark : const Color(0xFFE0E4EA);
    final itemCount = sectionCount.clamp(0, _items.length);

    return Container(
      width: railWidth,
      decoration: BoxDecoration(
        color: bgColor,
        border: Border(
          right: BorderSide(color: borderColor, width: 0.5),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),
          // Logo / brand mark
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [kAccentColor, Color(0xFF0097A7)],
              ),
              boxShadow: [
                BoxShadow(
                  color: kAccentColor.withValues(alpha: 0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: const Icon(
              Icons.devices_rounded,
              color: Colors.white,
              size: 18,
            ),
          ),
          const SizedBox(height: 16),
          Divider(
            color: borderColor,
            height: 1,
            indent: 12,
            endIndent: 12,
          ),
          const SizedBox(height: 8),
          // Navigation items
          Expanded(
            child: ListView.builder(
              itemCount: itemCount,
              padding: const EdgeInsets.symmetric(vertical: 4),
              itemBuilder: (context, index) {
                final item = _items[index];
                final isSelected = index == selectedIndex;
                return _NavItemWidget(
                  item: item,
                  isSelected: isSelected,
                  onTap: () => onSelected(index),
                );
              },
            ),
          ),
          // Enable/disable toggle at bottom
          Divider(
            color: borderColor,
            height: 1,
            indent: 12,
            endIndent: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: _PowerToggle(
              isEnabled: isEnabled,
              onChanged: onEnabledChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class _NavItem {
  const _NavItem({required this.icon, required this.label});
  final IconData icon;
  final String label;
}

class _NavItemWidget extends StatefulWidget {
  const _NavItemWidget({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  final _NavItem item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  State<_NavItemWidget> createState() => _NavItemWidgetState();
}

class _NavItemWidgetState extends State<_NavItemWidget>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final Color iconColor;
    final Color bgColor;

    if (widget.isSelected) {
      iconColor = kAccentColor;
      bgColor = kAccentColor.withValues(alpha: isDark ? 0.12 : 0.08);
    } else if (_isHovered) {
      iconColor = isDark ? Colors.white70 : const Color(0xFF555566);
      bgColor = isDark
          ? Colors.white.withValues(alpha: 0.05)
          : Colors.black.withValues(alpha: 0.04);
    } else {
      iconColor = isDark ? const Color(0xFF666688) : const Color(0xFF999AAA);
      bgColor = Colors.transparent;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: GestureDetector(
          onTap: widget.onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutCubic,
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10),
              border: widget.isSelected
                  ? Border.all(
                      color: kAccentColor.withValues(alpha: 0.3),
                      width: 0.5,
                    )
                  : null,
              boxShadow: widget.isSelected
                  ? [
                      BoxShadow(
                        color: kAccentColor.withValues(alpha: 0.15),
                        blurRadius: 8,
                      ),
                    ]
                  : null,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 200),
                  style: TextStyle(color: iconColor),
                  child: Icon(
                    widget.item.icon,
                    size: 20,
                    color: iconColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PowerToggle extends StatefulWidget {
  const _PowerToggle({
    required this.isEnabled,
    required this.onChanged,
  });

  final bool isEnabled;
  final ValueChanged<bool> onChanged;

  @override
  State<_PowerToggle> createState() => _PowerToggleState();
}

class _PowerToggleState extends State<_PowerToggle>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final color = widget.isEnabled ? kAccentColor : const Color(0xFF555566);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () => widget.onChanged(!widget.isEnabled),
        child: Tooltip(
          message: widget.isEnabled ? 'Disable preview' : 'Enable preview',
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.isEnabled
                  ? kAccentColor.withValues(alpha: 0.12)
                  : Colors.transparent,
              border: Border.all(
                color: _isHovered
                    ? color
                    : color.withValues(alpha: 0.4),
                width: 1.5,
              ),
              boxShadow: widget.isEnabled
                  ? [
                      BoxShadow(
                        color: kAccentColor.withValues(alpha: 0.2),
                        blurRadius: 8,
                      ),
                    ]
                  : null,
            ),
            child: Icon(
              Icons.power_settings_new_rounded,
              size: 18,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
