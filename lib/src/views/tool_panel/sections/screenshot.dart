import 'package:device_preview_shot/device_preview_shot.dart';
import '/src/views/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// A tool panel section that allows taking screenshots.
class ScreenshotSection extends StatelessWidget {
  const ScreenshotSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ToolPanelSection(
      title: 'Screenshot',
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Description
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: kAccentColor.withValues(alpha: 0.06),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: kAccentColor.withValues(alpha: 0.12),
                    width: 0.5,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline_rounded,
                      size: 16,
                      color: kAccentColor.withValues(alpha: 0.7),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Capture the current device frame as a screenshot',
                        style: TextStyle(
                          color: kMutedText,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Capture button
              _CaptureButton(
                onTap: () async {
                  final store = context.read<DevicePreviewStore>();
                  final state = context
                      .findAncestorStateOfType<DevicePreviewWidgetState>();
                  if (state != null) {
                    final screenshot = await state.screenshot(store);
                    if (context.mounted) {
                      showDialog(
                        context: context,
                        builder: (context) => _ScreenshotPreviewDialog(
                          screenshot: screenshot,
                        ),
                      );
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CaptureButton extends StatefulWidget {
  const _CaptureButton({required this.onTap});

  final VoidCallback onTap;

  @override
  State<_CaptureButton> createState() => _CaptureButtonState();
}

class _CaptureButtonState extends State<_CaptureButton> {
  bool _isPressed = false;
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTapDown: (_) => setState(() => _isPressed = true),
        onTapUp: (_) {
          setState(() => _isPressed = false);
          widget.onTap();
        },
        onTapCancel: () => setState(() => _isPressed = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeOutCubic,
          height: 44,
          transform: _isPressed
              ? (Matrix4.identity()..setEntry(0, 0, 0.97)..setEntry(1, 1, 0.97))
              : Matrix4.identity(),
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                kAccentColor,
                kAccentColor.withValues(alpha: 0.8),
                const Color(0xFF0097A7),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: kAccentColor.withValues(
                  alpha: _isHovered ? 0.4 : 0.2,
                ),
                blurRadius: _isHovered ? 12 : 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.camera_alt_rounded,
                color: Color(0xFF0F0F1A),
                size: 18,
              ),
              SizedBox(width: 8),
              Text(
                'Capture Screenshot',
                style: TextStyle(
                  color: Color(0xFF0F0F1A),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ScreenshotPreviewDialog extends StatelessWidget {
  const _ScreenshotPreviewDialog({required this.screenshot});

  final DeviceScreenshot screenshot;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400, maxHeight: 600),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 8, 8),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: kAccentColor,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      'Screenshot Captured',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close_rounded, size: 20),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            const Divider(height: 0.5),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.memory(
                    screenshot.bytes,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
