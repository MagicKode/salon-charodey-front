import 'package:flutter/material.dart';

import 'domain/entities/AppVersionEntity.dart';
import 'sections/logout_section.dart';
import 'sections/privacy_policy_section.dart';
import 'sections/profile_theme_tile.dart';
import 'sections/share_section.dart';
import 'sections/support_section.dart';
import 'sections/user_info_section.dart';
import 'sections/version_section.dart';

class ProfileScreebBody extends StatelessWidget {
  final ValueNotifier<ThemeMode> themeNotifier;

  const ProfileScreebBody({super.key, required this.themeNotifier});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      children: [
        const UserInfoSection(
          firstName: 'Гость',
          phone: '+375 (29) 123-45-67',
          email: 'guest@example.com',
        ),
        const SizedBox(height: 24),
        const ShareSection(),
        const SizedBox(height: 4),
        const SupportSection(),
        const SizedBox(height: 4),
        ProfileThemeTile(themeNotifier: themeNotifier),
        const SizedBox(height: 4),
        const PrivacyPolicySection(),
        const SizedBox(height: 4),
        const LogoutSection(),
        const SizedBox(height: 32),
        const VersionSection(
          versionInfo: AppVersionEntity(version: '1.0.0', buildNumber: '1'),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
