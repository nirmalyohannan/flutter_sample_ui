import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unibit_ui/config/app_assets.dart';
import 'package:unibit_ui/config/app_colors.dart';
import 'package:unibit_ui/screens/home_screen/home_screen.dart';
import 'package:unibit_ui/screens/main_screen/main_screen.dart';
import 'package:unibit_ui/utils/ui_constants.dart';
import 'package:unibit_ui/utils/widgets/gradient_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.screenBgColor,
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                AppAssets.logoUnibit,
                width: size.width / 3,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      UIConstants.gapHeight10,
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                      UIConstants.gapHeight20,
                      const _LoginTextField(
                        hintText: 'Mobile number',
                        prefixIconPath: AppAssets.iconPhone,
                      ),
                      UIConstants.gapHeight20,
                      const _LoginTextField(
                        hintText: 'Password',
                        prefixIconPath: AppAssets.iconLock,
                      ),
                      UIConstants.gapHeight10,
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      //
                      GradientElevatedButton(
                        buttonText: 'Login',
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const MainScreen(),
                              ));
                        },
                      ),
                      UIConstants.gapHeight20,
                      GradientElevatedButton(
                          buttonText: 'Login with OTP',
                          onPressed: () {},
                          gradientColors: const [
                            AppColors.secondaryColor,
                            Color.fromARGB(255, 68, 125, 198)
                          ]),
                      const SignUpSection()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class SignUpSection extends StatelessWidget {
  const SignUpSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            child: const Text(
              'Sign up now',
              style: TextStyle(color: AppColors.primaryColor),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class _LoginTextField extends StatelessWidget {
  final String hintText;
  final String prefixIconPath;
  const _LoginTextField({
    required this.hintText,
    required this.prefixIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              prefixIconPath,
              width: 5,
            ),
          ),
          border: UIConstants.textFieldBorder,
          fillColor: AppColors.textFieldColor,
          filled: true),
    );
  }
}
