import 'package:agatra/components/user_role_chip.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

enum UserRole {
  member(null),
  admin(
    UserRoleChip(
      name: "ADMIN",
      containerColor: Color(0xff690005),
      textColor: Color(0xffffb4ab),
    ),
  ),
  maintainer(
    UserRoleChip(
      name: "MAINTAINER",
      containerColor: Color(0xff00390a),
      textColor: Color(0xffb6f2af),
    ),
  );

  const UserRole(this.chip);
  final UserRoleChip? chip;

  factory UserRole.fromName(String name) {
    switch (name.toLowerCase()) {
      case 'admin':
        return UserRole.admin;
      case 'maintainer':
        return UserRole.maintainer;
      default:
        return UserRole.member;
    }
  }

  Widget get chipWidget => chip ?? const SizedBox.shrink();

  Widget get completeUser => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(name),
          const SizedBox(width: 8.0),
          chipWidget,
        ],
      );
}

@freezed
class UserEntity with _$UserEntity { 
  factory UserEntity({
    required int id,
    required String username,
    required String email,
    required UserRole role,
  }) = _UserEntity;
}
