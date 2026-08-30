class LoginCredentials {
  final String phone;
  final String password;

  const LoginCredentials({required this.phone, required this.password});

  bool get isValid => phone.trim().isNotEmpty && password.trim().isNotEmpty;
}
