import 'package:flutter/material.dart';

import '../../../../uikit/colors/app_colors.dart';
import '../domain/entities/AppVersionEntity.dart';

class VersionSection extends StatelessWidget {
  final AppVersionEntity versionInfo;

  const VersionSection({super.key, required this.versionInfo});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return Center(
      child: Text(
        'Версия ${versionInfo.version} (${versionInfo.buildNumber})',
        style: TextStyle(fontSize: 14, color: colors.textSecondary),
      ),
    );
  }
}
