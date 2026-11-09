import 'package:dsw61955/utils/app_colors.dart';
import 'package:dsw61955/utils/app_images.dart';
import 'package:dsw61955/utils/app_texts.dart';
import 'package:flutter/material.dart';

import '../register/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 62),
                  Image.asset(AppImages.logo, width: 192, height: 192),
                  SizedBox(height: 21),
                  Align(
                    alignment: .topLeft,
                    child: Text(
                      AppTexts.signIn,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColors.purplecolor,
                      ),
                    ),
                  ),
                  SizedBox(height: 46),
                  TextFormField(),
                  SizedBox(height: 40),
                  TextFormField(),
                  ElevatedButton(
                    child: const Text('Open route'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const RegisterView(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    onTap: () => print('xxx'),
                    child: Text(
                      AppTexts.signUp,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
