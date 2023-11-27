import 'package:equatable/equatable.dart';

class AuthLogin extends Equatable {
  final String username;
  final String password;

  const AuthLogin({
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [
    username,
    password
  ];
}