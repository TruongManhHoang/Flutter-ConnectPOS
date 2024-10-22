import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarDrawer extends StatelessWidget {
  const AppBarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 70,
            color: const Color(0xFF26A69A),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      context.push(AppRouter.homePath);
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  _buildDrawerButton(context, 'Outlet & Register',
                      AppRouter.outletRegisterPath),
                  _buildDrawerButton(context, 'Custom Order Status',
                      AppRouter.customOrderStatusPath),
                  _buildDrawerButton(context, 'Receipt', AppRouter.receiptPath),
                  _buildDrawerButton(context, 'Tax', null),
                  _buildDrawerButton(context, 'Tax Class', null),
                  _buildDrawerButton(context, 'Discount', null),
                  _buildDrawerButton(context, 'Hardware', null),
                  _buildDrawerButton(context, 'Multi Currency', null),
                  _buildDrawerButton(context, 'Language', null),
                  _buildDrawerButton(context, 'Flush Cache', null),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton _buildDrawerButton(
      BuildContext context, String label, String? route) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide.none,
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      onPressed: () {
        if (route != null) {
          context.push(route);
        }
      },
      child: Text(
        label,
        style: const TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
  }
}
