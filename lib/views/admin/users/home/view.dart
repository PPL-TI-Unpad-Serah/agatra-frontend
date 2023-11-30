import 'package:agatra/features/domain/entities/user.dart';
import 'package:agatra/providers.dart';
import 'package:agatra/views/admin/users/home/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'search_bar.dart';
part 'search_user_item.dart';
part 'privileged_list.dart';

class AdminUsersHomeView extends StatelessWidget {
  const AdminUsersHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const _UserSearchBar(),
      ),
      body: const _PrivilegedList(),
    );
  }
}
