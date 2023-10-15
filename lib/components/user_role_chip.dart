import 'package:flutter/material.dart';

class UserRoleChip extends StatelessWidget {
  final String name;
  final Color containerColor;
  final Color textColor;

  const UserRoleChip({
    super.key,
    required this.name,
    required this.containerColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Text(
          name,
          style: TextStyle(
            height: 1,
            color: textColor,
            fontWeight: FontWeight.w800,
            fontSize: Theme.of(context).textTheme.bodySmall!.fontSize! * 0.75,
          ),
        ),
      ),
    );
  }
}
