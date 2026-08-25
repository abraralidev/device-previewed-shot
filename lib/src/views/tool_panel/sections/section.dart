import 'package:flutter/material.dart';
import '/src/views/theme.dart';

/// A section in the tool panel.
///
/// No longer a sliver — sections are now displayed one at a time
/// in the content area of the tool panel, so they use regular widgets.
class ToolPanelSection extends StatelessWidget {
  /// Create a new panel section with the given [title] and [children].
  const ToolPanelSection({
    super.key,
    required this.title,
    required this.children,
  });

  /// The section header content.
  final String title;

  /// The section children widgets.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Section header
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 8,
            bottom: 12,
          ),
          child: Row(
            children: [
              Container(
                width: 3,
                height: 14,
                decoration: BoxDecoration(
                  color: kAccentColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                title.toUpperCase(),
                style: theme.textTheme.titleSmall?.copyWith(
                  color: isDark ? kMutedText : const Color(0xFF8899AA),
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        // Children wrapped in a card
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: _buildSeparatedChildren(context),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildSeparatedChildren(BuildContext context) {
    final theme = Theme.of(context);
    final result = <Widget>[];
    for (int i = 0; i < children.length; i++) {
      result.add(children[i]);
      if (i < children.length - 1) {
        result.add(Divider(
          height: 0.5,
          thickness: 0.5,
          color: theme.dividerColor,
          indent: 16,
          endIndent: 16,
        ));
      }
    }
    return result;
  }
}
