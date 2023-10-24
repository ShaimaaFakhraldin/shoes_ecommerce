import 'package:flutter/material.dart';

import '../../../config/thems/app_colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  margin: const EdgeInsetsDirectional.only(start: 20),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(Icons.arrow_back_ios_new),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
