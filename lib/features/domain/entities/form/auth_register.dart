import 'package:equatable/equatable.dart';

class AuthRegister extends Equatable {
  final String username;
  final String email;
  final String password;
  final String confirmPassword;

  const AuthRegister({
    required this.username,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });

  @override
  List<Object?> get props => [
    username,
    email,
    password,
    confirmPassword
  ];
}