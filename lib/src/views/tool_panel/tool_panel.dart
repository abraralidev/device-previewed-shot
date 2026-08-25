import '/src/state/store.dart';
import '/src/views/theme.dart';
import '/src/views/tool_panel/widgets/side_nav_rail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// The panel which contains all the tools.
class ToolPanel extends StatelessWidget {
  /// Create a new panel from the given tools grouped as [slivers].
  ///
  /// The [isModal] indicates whether the panel is shown modally as a new page, or if it
  /// stays visible on one side of the parent layout.
  const ToolPanel({
    super.key,
    required this.slivers,
    this.isModal = false,
  });

  /// Indicates whether the panel is shown modally as a new page, or if it
  /// stays visible on one side of the parent layout.
  final bool isModal;

  /// The sections containing the tools.
  final List<Widget> slivers;

  /// The panel width when not modal.
  static const double panelWidth = 380;

  @override
  Widget build(BuildContext context) {
    final rootContext = context;
    return Navigator(
      onGenerateInitialRoutes: (nav, name) {
        return [
          MaterialPageRoute(
            builder: (context) {
              final toolbarTheme = context.select(
                (DevicePreviewStore store) => store.settings.toolbarTheme,
              );
              return Theme(
                data: toolbarTheme.asThemeData(),
                child: _ToolPanelBody(
                  sections: slivers,
                  isModal: isModal,
                  onClose: () {
                    Navigator.maybePop(rootContext);
                  },
                ),
              );
            },
          ),
        ];
      },
    );
  }
}

class _ToolPanelBody extends StatefulWidget {
  const _ToolPanelBody({
    required this.isModal,
    required this.onClose,
    required this.sections,
  });

  final bool isModal;
  final VoidCallback onClose;
  final List<Widget> sections;

  @override
  State<_ToolPanelBody> createState() => _ToolPanelBodyState();
}

class _ToolPanelBodyState extends State<_ToolPanelBody> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }

  static const List<String> _sectionTitles = [
    'Device',
    'System',
    'Accessibility',
    'Settings',
    'Screenshot',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isEnabled = context.select(
      (DevicePreviewStore store) => store.data.isEnabled,
    );

    final safeIndex = _selectedIndex.value.clamp(0, widget.sections.length - 1);
    final title = safeIndex < _sectionTitles.length
        ? _sectionTitles[safeIndex]
        : 'Tools';

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          Row(
            children: [
              // Side navigation rail
              SideNavRail(
                selectedIndex: _selectedIndex.value,
                sectionCount: widget.sections.length,
                isEnabled: isEnabled,
                onEnabledChanged: (v) {
                  final state = context.read<DevicePreviewStore>();
                  state.data = state.data.copyWith(isEnabled: v);
                },
                onSelected: (index) {
                  if (_selectedIndex.value != index) {
                    _navigatorKey.currentState?.popUntil((route) => route.isFirst);
                    setState(() {
                      _selectedIndex.value = index;
                    });
                  }
                },
              ),
              // Content area
              Expanded(
                child: Column(
                  children: [
                    // Header
                    _ContentHeader(
                      title: title,
                      isModal: widget.isModal,
                      onClose: widget.onClose,
                    ),
                    // Section content
                    Expanded(
                      child: Navigator(
                        key: _navigatorKey,
                        onGenerateInitialRoutes: (navigator, initialRoute) {
                          return [
                            MaterialPageRoute(
                              builder: (context) => ValueListenableBuilder<int>(
                                valueListenable: _selectedIndex,
                                builder: (context, index, _) {
                                  final safeIndex = index.clamp(0, widget.sections.length - 1);
                                  return AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 250),
                                    switchInCurve: Curves.easeOutCubic,
                                    switchOutCurve: Curves.easeInCubic,
                                    transitionBuilder: (child, animation) {
                                      return FadeTransition(
                                        opacity: animation,
                                        child: SlideTransition(
                                          position: Tween<Offset>(
                                            begin: const Offset(0, 0.03),
                                            end: Offset.zero,
                                          ).animate(animation),
                                          child: child,
                                        ),
                                      );
                                    },
                                    child: ListView(
                                      key: ValueKey<int>(safeIndex),
                                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                                      children: [
                                        KeyedSubtree(
                                          key: ValueKey<int>(safeIndex),
                                          child: widget.sections[safeIndex],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ];
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Disabled overlay
          Positioned.fill(
            left: SideNavRail.railWidth,
            child: IgnorePointer(
              ignoring: isEnabled,
              child: AnimatedOpacity(
                opacity: isEnabled ? 0 : 1,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  color: isDark
                      ? const Color(0xDD0F0F1A)
                      : const Color(0xCCF5F7FA),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.visibility_off_rounded,
                          size: 32,
                          color: isDark ? kMutedText : const Color(0xFF8899AA),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Preview disabled',
                          style: TextStyle(
                            color: isDark ? kMutedText : const Color(0xFF8899AA),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ContentHeader extends StatelessWidget {
  const _ContentHeader({
    required this.title,
    required this.isModal,
    required this.onClose,
  });

  final String title;
  final bool isModal;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: isDark ? kBorderDark : const Color(0xFFE0E4EA),
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: [
          if (isModal) ...[
            IconButton(
              icon: const Icon(Icons.close_rounded, size: 20),
              onPressed: onClose,
              style: IconButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(32, 32),
              ),
            ),
            const SizedBox(width: 4),
          ],
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
            child: Text(
              title,
              key: ValueKey(title),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: isDark ? Colors.white : const Color(0xFF1A1A2E),
                letterSpacing: 0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
