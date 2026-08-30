import 'package:flutter/material.dart';
import '../../../../uikit/widgets/buttons/primary_button.dart';

class LoginButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onPressed;

  const LoginButton({
    super.key,
    required this.isLoading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : PrimaryButton(
      text: 'Войти',
      onPressed: onPressed,
    );
  }
}
