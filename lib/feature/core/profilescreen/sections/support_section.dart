import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../uikit/colors/app_colors.dart';

class SupportSection extends StatelessWidget {
  const SupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return ListTile(
      leading: Icon(Icons.headset_mic_outlined, color: colors.textPrimary),
      title: Text('Поддержка', style: TextStyle(color: colors.textPrimary)),
      trailing: Icon(Icons.chevron_right, color: colors.textSecondary),
      onTap: () async {
        final uri = Uri.parse('https://t.me/charodey_support');
        try {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } catch (_) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Не удалось открыть Telegram')),
          );
        }
      },
    );
  }
}
