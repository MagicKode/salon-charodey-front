import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../config/app_router.dart';
import 'sections/logo_widget.dart';
import 'sections/phone_input_field.dart';
import 'sections/password_input_field.dart';
import 'sections/login_button.dart';
import 'sections/forgot_password_button.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _isLoading = false;

  static const String _validPhone = '12345';
  static const String _validPassword = 'password';

  Future<void> _login() async {
    final phone = _phoneController.text.trim();
    final password = _passwordController.text.trim();

    if (phone.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Заполните все поля')),
      );
      return;
    }

    if (phone != _validPhone || password != _validPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Неверный телефон или пароль')),
      );
      return;
    }

    setState(() => _isLoading = true);

    // Имитация запроса к серверу
    await Future.delayed(const Duration(seconds: 1));

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('is_logged_in', true);

    if (mounted) {
      setState(() => _isLoading = false);
      context.go(AppRouter.home);
    }
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            const LogoWidget(),
            const SizedBox(height: 32),
            PhoneInputField(controller: _phoneController),
            const SizedBox(height: 16),
            PasswordInputField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              onToggleVisibility: _togglePasswordVisibility,
            ),
            const SizedBox(height: 32),
            LoginButton(
              isLoading: _isLoading,
              onPressed: _login,
            ),
            const SizedBox(height: 16),
            const ForgotPasswordButton(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
