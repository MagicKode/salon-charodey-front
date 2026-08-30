import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../uikit/colors/app_colors.dart';

class PrivacyPolicySection extends StatelessWidget {
  const PrivacyPolicySection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return ListTile(
      leading: Icon(Icons.description_outlined, color: colors.textPrimary),
      title: Text(
        'Политика конфиденциальности',
        style: TextStyle(color: colors.textPrimary),
      ),
      trailing: Icon(Icons.chevron_right, color: colors.textSecondary),
      onTap: () async {
        final uri = Uri.parse('https://your-salon.com/privacy');
        try {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } catch (_) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Не удалось открыть страницу')),
          );
        }
      },
    );
  }
}
