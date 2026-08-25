import 'package:device_preview_shot/device_preview_shot.dart';

import '/src/views/theme.dart';
import '/src/views/tool_panel/tool_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

/// The tool layout when the screen is large.
class DervicePreviewLargeLayout extends StatefulWidget {
  /// Create a new panel from the given tools grouped as [slivers].
  const DervicePreviewLargeLayout({
    super.key,
    required this.slivers,
  });

  /// The sections containing the tools.
  ///
  /// They must be [Sliver]s.
  final List<Widget> slivers;

  @override
  DervicePreviewLargeLayoutState createState() =>
      DervicePreviewLargeLayoutState();
}

class DervicePreviewLargeLayoutState extends State<DervicePreviewLargeLayout> {
  @override
  void initState() {
    // Forcing rebuild to update absolute position in `_overlayKey`
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => setState(() {}),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final toolbarTheme = context.select(
      (DevicePreviewStore store) => store.settings.toolbarTheme,
    );
    final isDark =
        toolbarTheme == DevicePreviewToolBarThemeData.dark;

    return Theme(
      data: toolbarTheme.asThemeData(),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Localizations(
          locale: const Locale('en', 'US'),
          delegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                bottom: 0,
                width: ToolPanel.panelWidth,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: isDark ? kBorderDark : const Color(0xFFE0E4EA),
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: MediaQuery(
                    data: mediaQuery.copyWith(
                      padding: mediaQuery.padding.copyWith(left: 0) +
                          const EdgeInsets.only(left: 40),
                    ),
                    child: ToolPanel(
                      slivers: widget.slivers,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
