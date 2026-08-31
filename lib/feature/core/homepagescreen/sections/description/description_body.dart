import 'package:flutter/material.dart';
import '../../../../../uikit/colors/app_colors.dart';

class DescriptionBody extends StatefulWidget {
  const DescriptionBody({super.key});

  @override
  State<DescriptionBody> createState() => _DescriptionBodyState();
}

class _DescriptionBodyState extends State<DescriptionBody> {
  bool _expanded = false;

  static const String _fullText =
      'Стрижем и бреем джентльменов с 1956 года.\nКофе каждому гостю ☕️\n📍 Рядом с метро «Площадь Ленина».';

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Описание салона:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: colors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        AnimatedCrossFade(
          firstChild: Text(
            _fullText,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: colors.textSecondary,
            ),
          ),
          secondChild: Text(
            _fullText,
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: colors.textPrimary,
            ),
          ),
          crossFadeState: _expanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 300),
        ),
      ],
    );
  }
}
