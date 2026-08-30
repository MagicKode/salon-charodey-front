import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../uikit/colors/app_colors.dart';

class ShareSection extends StatelessWidget {
  const ShareSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return ListTile(
      leading: Icon(Icons.share_outlined, color: colors.textPrimary),
      title: Text(
        'Поделиться приложением',
        style: TextStyle(color: colors.textPrimary),
      ),
      trailing: Icon(Icons.chevron_right, color: colors.textSecondary),
      onTap: () {
        const String appLink = 'https://your-salon.com/app';
        const String message = 'Скачайте приложение «Чародей»: $appLink';
        Share.share(message);
      },
    );
  }
}
