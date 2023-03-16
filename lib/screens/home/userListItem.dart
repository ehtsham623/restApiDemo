import 'package:flutter/material.dart';
import 'package:rest_api_demo/config/ps_colors.dart';
import 'package:rest_api_demo/constants/ui_settings.dart';
import 'package:rest_api_demo/core/models/userModel.dart';

class UserListItem extends StatelessWidget {
  final Data? user;

  const UserListItem({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: subPadding, horizontal: mainPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://picsum.photos/200/300',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(mainPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user!.firstName! + user!.lastName!,
                  style: Theme.of(context).textTheme.headline5!.copyWith(fontSize: 24),
                ),
                const SizedBox(height: 8),
                Text(
                  user!.email!,
                  style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.phone, color: PsColors.mainColor, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      '+923057310219',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on, color: PsColors.mainColor, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      "Jinnah colony Lahore pakistan",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.public, color: PsColors.mainColor, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      '${user!.firstName!}.com',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.business, color: PsColors.mainColor, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      'Ryalize',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
