part of 'view.dart';

class _SearchUserItem extends StatelessWidget {
  final UserEntity user;
  const _SearchUserItem({required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(user.username),
          const SizedBox(width: 8.0),
          Transform(
            transform: Transform.scale(
              scale: Theme.of(context).textTheme.bodyLarge!.fontSize! /
                  Theme.of(context).textTheme.bodyMedium!.fontSize!,
            ).transform,
            child: user.role.chipWidget,
          ),
        ],
      ),
    );
  }
}
