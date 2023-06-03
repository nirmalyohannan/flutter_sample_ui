import 'package:flutter/material.dart';
import 'package:unibit_ui/config/app_assets.dart';
import 'package:unibit_ui/config/app_colors.dart';
import 'package:unibit_ui/utils/ui_constants.dart';
import 'package:unibit_ui/utils/widgets/gradient_elevated_button.dart';

class PlayNowBanner extends StatelessWidget {
  const PlayNowBanner({
    super.key,
    required this.title,
    required this.bannerImage,
  });

  final String title;
  final String bannerImage;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: UIConstants.borderRadius20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(bannerImage),
          UIConstants.gapHeight10,
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          UIConstants.gapHeight10,
          Row(
            children: [
              const _ProfilePicStack(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [Text('5,00,000+'), Text("players")],
              ),
              const Spacer(),
              GradientElevatedButton(
                buttonText: "Play Now",
                width: size.width / 2.5,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _ProfilePicStack extends StatelessWidget {
  const _ProfilePicStack();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.centerRight,
      children: List.generate(
          AppAssets.profilePicsList.length,
          (index) => Padding(
                padding: EdgeInsets.only(right: index.toDouble() * 20),
                child: Image.asset(
                  AppAssets.profilePicsList[index],
                  width: size.width / 10,
                ),
              )),
    );
  }
}
