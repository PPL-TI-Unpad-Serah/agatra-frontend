import 'package:agatra/features/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

class SessionEntity extends Equatable{
  final String token;
  final UserEntity user;

  const SessionEntity({
    required this.token,
    required this.user,
  });

  @override
  List<Object?> get props => [
    token,
    user,
  ];
}