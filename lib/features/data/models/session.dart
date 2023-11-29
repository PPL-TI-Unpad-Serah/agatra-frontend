import 'package:agatra/features/data/models/user.dart';

class SessionModel {
  final String token;
  final UserModel user;

  const SessionModel({
    required this.token,
    required this.user,
  });

  factory SessionModel.fromJson(Map<String, dynamic> json) =>     
    SessionModel(
      token: "Bearer ${json['apiKey']}",
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );
  Map<String, dynamic> toJson() => {
    'token': token,
    'user': user.toJson(),
  };
}