import 'package:device_preview_shot/device_preview_shot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'basic.dart';
import 'custom_plugin.dart';

void main() {
  runApp(
    DevicePreviewShot(
      enabled: true,
      tools: const [
        ...DevicePreviewShot.defaultTools,
        CustomPlugin(),
      ],
      builder: (context) => const BasicApp(),
    ),
  );
}
