import 'package:collection/collection.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/src/state/store.dart';
import '/src/views/tool_panel/widgets/device_type_icon.dart';
import '/src/views/tool_panel/widgets/target_platform_icon.dart';
import '../section.dart';

part 'custom_device.dart';

/// A page for picking a simulated device model.
class DeviceModelPicker extends StatefulWidget {
  /// Create a new page for picking a simulated device model.
  const DeviceModelPicker({
    super.key,
  });

  @override
  State<DeviceModelPicker> createState() => _DeviceModelPickerState();
}

class _DeviceModelPickerState extends State<DeviceModelPicker>
    with SingleTickerProviderStateMixin {
  late final TabController controller = TabController(
    vsync: this,
    length: _allPlatforms.length + 1,
    initialIndex: () {
      final store = context.read<DevicePreviewStore>();
      if (store.isCustomDevice) {
        return _allPlatforms.length;
      }
      final platform = store.deviceInfo.identifier.platform;
      return _allPlatforms.indexOf(platform);
    }(),
  );

  @override
  void initState() {
    super.initState();
    controller.addListener(
      () {
        if (controller.index == _allPlatforms.length) {
          final state = context.read<DevicePreviewStore>();
          state.enableCustomDevice();
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Device model'),
        bottom: TabBar(
          controller: controller,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
          indicator: BoxDecoration(
            color: const Color(0xFF00E5FF).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF00E5FF).withValues(alpha: 0.5)),
          ),
          dividerColor: Colors.transparent,
          tabs: [
            ..._allPlatforms.map(
              (e) => Tab(
                icon: TargetPlatformIcon(platform: e),
                text: e.name,
              ),
            ),
            const Tab(
              icon: Icon(Icons.tune),
              text: 'Custom',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ..._allPlatforms.map(
            (e) => _PlatformModelPicker(
              platform: e,
            ),
          ),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            children: [
              ...buildCustomDeviceTiles(context),
            ],
          ),
        ],
      ),
    );
  }
}

class _PlatformModelPicker extends StatelessWidget {
  const _PlatformModelPicker({
    required this.platform,
  });

  final TargetPlatform platform;

  @override
  Widget build(BuildContext context) {
    final devices = context.select(
      (DevicePreviewStore store) => store.devices
          .where(
            (x) => platform == x.identifier.platform,
          )
          .toList()
        ..sort((x, y) {
          final result = x.screenSize.width.compareTo(y.screenSize.width);
          return result == 0
              ? x.screenSize.height.compareTo(y.screenSize.height)
              : result;
        }),
    );
    final byDeviceType =
        groupBy<DeviceInfo, DeviceType>(devices, (d) => d.identifier.type);
    return ListView(
      children: [
        ...byDeviceType.entries
            .map(
              (e) => [
                _TypeSectionHeader(
                  type: e.key,
                ),
                ...e.value.map(
                  (d) => DeviceTile(
                    info: d,
                  ),
                ),
              ],
            )
            .expand((x) => x),
      ],
    );
  }
}

class _TypeSectionHeader extends StatelessWidget {
  _TypeSectionHeader({
    required this.type,
  }) : super(key: ValueKey(type));

  final DeviceType type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 30, top: 30, bottom: 16),
      child: Text(
        () {
          switch (type) {
            case DeviceType.tablet:
              return 'Tablet';
            case DeviceType.desktop:
              return 'Desktop';
            case DeviceType.tv:
              return 'TV';
            case DeviceType.laptop:
              return 'Laptop';
            default:
              return 'Phone';
          }
        }()
            .toUpperCase(),
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.hintColor,
        ),
      ),
    );
  }
}

class DeviceTile extends StatelessWidget {
  const DeviceTile({
    super.key,
    required this.info,
  });

  final DeviceInfo info;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    
    final selectedIdentifier = context.select(
      (DevicePreviewStore store) => store.deviceInfo.identifier,
    );
    final isSelected = selectedIdentifier == info.identifier;
    final isCustom = context.select(
      (DevicePreviewStore store) => store.isCustomDevice,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: isSelected && !isCustom
              ? const BorderSide(color: Color(0xFF00E5FF), width: 1)
              : BorderSide.none,
        ),
        tileColor: isSelected && !isCustom
            ? const Color(0xFF00E5FF).withValues(alpha: 0.1)
            : (isDark ? const Color(0xFF1A1A2E) : Colors.white),
        title: Text(
          info.name,
          style: TextStyle(
            fontWeight: isSelected && !isCustom ? FontWeight.w600 : FontWeight.normal,
            color: isSelected && !isCustom
                ? const Color(0xFF00E5FF)
                : theme.textTheme.bodyMedium?.color,
          ),
        ),
        leading: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: isSelected && !isCustom
                ? const Color(0xFF00E5FF).withValues(alpha: 0.2)
                : theme.cardColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: DeviceTypeIcon(
            type: info.identifier.type,
          ),
        ),
        subtitle: Text(
          '${info.screenSize.width}x${info.screenSize.height} @${info.pixelRatio}',
          style: TextStyle(
            fontSize: 11,
            color: isSelected && !isCustom
                ? const Color(0xFF00E5FF).withValues(alpha: 0.8)
                : theme.hintColor,
          ),
        ),
        trailing: isSelected && !isCustom
            ? const Icon(Icons.check_circle_rounded, color: Color(0xFF00E5FF), size: 20)
            : null,
        onTap: () {
          final state = context.read<DevicePreviewStore>();
          state.selectDevice(info.identifier);
        },
      ),
    );
  }
}

const _allPlatforms = <TargetPlatform>[
  TargetPlatform.iOS,
  TargetPlatform.android,
  TargetPlatform.macOS,
  TargetPlatform.windows,
  TargetPlatform.linux,
];

const _allDeviceTypes = <DeviceType>[
  DeviceType.phone,
  DeviceType.tablet,
  DeviceType.desktop,
  DeviceType.laptop,
];
