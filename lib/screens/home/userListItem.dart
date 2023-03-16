import 'package:flutter/material.dart';
import 'package:rest_api_demo/core/models/userModel.dart';

class UserListItem extends StatelessWidget {
  final Data? user;

  const UserListItem({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
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
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user!.firstName! + user!.lastName!,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  user!.email!,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.grey[600], size: 20),
                    const SizedBox(width: 8),
                    Text(
                      '+923057310219',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.grey[600], size: 20),
                    const SizedBox(width: 8),
                    Text(
                      "Jinnah colony Lahore pakistan",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.public, color: Colors.grey[600], size: 20),
                    const SizedBox(width: 8),
                    Text(
                      '${user!.firstName!}@exaample.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.business, color: Colors.grey[600], size: 20),
                    const SizedBox(width: 8),
                    Text(
                      'Ryalize',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
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
