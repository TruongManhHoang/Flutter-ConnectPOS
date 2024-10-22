import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarUser extends StatelessWidget {
  const AppBarUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 70,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Menu',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20), // Đổi màu chữ về đen để dễ nhìn hơn
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDrawerButton(context, 'SELL SCREEN',
                    AppRouter.outletRegisterPath, Icons.sell),
                _buildDrawerButton(context, 'SHIFTS',
                    AppRouter.customOrderStatusPath, Icons.schedule),
                _buildDrawerButton(context, 'ORDER LIST', AppRouter.receiptPath,
                    Icons.list_alt),
                _buildDrawerButton(context, 'SETTINGS', null, Icons.settings),
                _buildDrawerButton(context, 'ADVANCED', null, Icons.build),
                _buildDrawerButton(context, 'REPORT', null, Icons.report),
                _buildDrawerButton(context, 'APPS', null, Icons.apps),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton _buildDrawerButton(
      BuildContext context, String label, String? route, IconData icon) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(300, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: BorderSide.none,
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      icon: Icon(icon, color: Colors.black),
      onPressed: () {
        if (route != null) {
          context.push(route);
        }
      },
      label: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          label,
          style: const TextStyle(fontSize: 15, color: Colors.black),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
