import 'package:clientes_app/core/constants/AppAssetsRoute.dart';
import 'package:clientes_app/core/constants/AppColors.dart';
import 'package:flutter/material.dart';

class AppbarHome extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onMenuPressed;
  final VoidCallback? onSearchPressed;
  final VoidCallback? onBagPressed;
  final bool showNotification;

  const AppbarHome({
    super.key,
    required this.onBagPressed,
    required this.onMenuPressed,
    required this.onSearchPressed,
    this.showNotification = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      foregroundColor: AppColors.primary,
      elevation: 0,
      automaticallyImplyActions: false,
      leadingWidth: 70,

      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu, size: 27),
      ),
      titleSpacing: 0,
      title: Image.asset(AppAssetsRoute.logoApp, height: 27),
      actions: [
        IconButton(
          onPressed: () {}, //onSearchPressed,
          icon: const Icon(Icons.search, size: 27),
        ),
        SizedBox(width: 8),

        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              IconButton(
                onPressed: () {}, //onBagPressed
                icon: const Icon(Icons.shopping_bag_outlined, size: 27),
              ),
              if (showNotification)
                const Positioned(
                  top: 6,
                  right: 4,
                  child: CircleAvatar(radius: 5, backgroundColor: AppColors.warning),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
