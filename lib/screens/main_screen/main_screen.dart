import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:unibit_ui/config/app_assets.dart';
import 'package:unibit_ui/config/app_colors.dart';
import 'package:unibit_ui/screens/home_screen/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      bottomScreenMargin: 0,
      navBarHeight: 70,
      context,
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(0)),
      navBarStyle: NavBarStyle.style15,
      backgroundColor: AppColors.white,
      screens: const [
        HomeScreen(),
        PlaceholderScreen(title: "Wallet"),
        PlaceholderScreen(title: "Add"),
        PlaceholderScreen(title: "Share"),
        PlaceholderScreen(title: "Profile"),
      ],
      items: [
        PersistentBottomNavBarItem(
          contentPadding: 0,
          iconSize: 35,
          activeColorPrimary: Colors.grey,
          inactiveColorPrimary: Colors.grey,
          icon: Image.asset(AppAssets.iconContact),
          title: "Contact",
        ),
        PersistentBottomNavBarItem(
          contentPadding: 0,
          iconSize: 35,
          activeColorPrimary: Colors.grey,
          inactiveColorPrimary: Colors.grey,
          icon: Image.asset(
            AppAssets.iconWallet,
          ),
          title: "Wallet",
        ),
        PersistentBottomNavBarItem(
            contentPadding: 0,
            icon: const Icon(
              Icons.add,
              color: AppColors.white,
            )),
        PersistentBottomNavBarItem(
          contentPadding: 0,
          iconSize: 35,
          activeColorPrimary: Colors.grey,
          inactiveColorPrimary: Colors.grey,
          icon: Image.asset(AppAssets.iconShare),
          title: "Share",
        ),
        PersistentBottomNavBarItem(
          contentPadding: 0,
          iconSize: 35,
          activeColorPrimary: Colors.grey,
          inactiveColorPrimary: Colors.grey,
          icon: Image.asset(AppAssets.iconProfile),
          title: "Profile",
        )
      ],
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
