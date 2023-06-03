import 'package:flutter/material.dart';
import 'package:unibit_ui/config/app_assets.dart';
import 'package:unibit_ui/config/app_colors.dart';
import 'package:unibit_ui/screens/home_screen/play_now_banner.dart';
import 'package:unibit_ui/utils/ui_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        automaticallyImplyLeading: false,
        leading: const _AppBarLeading(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(AppAssets.iconNotification),
          )
        ],
      ),
      backgroundColor: AppColors.screenBgColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello, Dipak👋',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              UIConstants.gapHeight10,
              Image.asset(AppAssets.banner1),
              UIConstants.gapHeight20,
              const PlayNowBanner(
                title: "Play Ludo and Earn Money",
                bannerImage: AppAssets.banner2,
              ),
              UIConstants.gapHeight20,
              const PlayNowBanner(
                title: "Play Ludo and Earn Money",
                bannerImage: AppAssets.banner3,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class _AppBarLeading extends StatelessWidget {
  const _AppBarLeading();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primaryColor, width: 2)),
      child: ClipRRect(
        borderRadius: UIConstants.borderRadiusCircular,
        child: Container(
          color: AppColors.white,
          padding: const EdgeInsets.all(8),
          child: Image.asset(AppAssets.logoUnibit),
        ),
      ),
    );
  }
}
