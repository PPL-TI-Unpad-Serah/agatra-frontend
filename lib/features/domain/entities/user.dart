import 'package:equatable/equatable.dart';
import 'package:agatra/components/user_role_chip.dart';
import 'package:flutter/material.dart';

enum UserRole {
  user(null),
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
        return UserRole.user;
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

class UserEntity extends Equatable {
  final String id;
  final String name;
  final UserRole role;

  const UserEntity({
    required this.id,
    required this.name,
    required this.role,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        role,
      ];
}
