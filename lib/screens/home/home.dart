import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api_demo/core/providers/homeProvider.dart';
import 'package:rest_api_demo/screens/home/userListItem.dart';
import 'package:rest_api_demo/screens/shared/drawer/mDrawer.dart';

class Home extends StatefulWidget {
  static const route = 'Home';
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: context.watch<HomeProvider>().users.length,
                  itemBuilder: (context, index) {
                    final user = context.watch<HomeProvider>().users[index];
                    return UserListItem(
                      user: user,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const MDrawer(),
    );
  }
}
