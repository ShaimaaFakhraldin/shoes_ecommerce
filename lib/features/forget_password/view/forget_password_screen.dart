import 'package:flutter/material.dart';

import '../../../config/thems/app_colors.dart';
import '../../../shard_components/general.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Icon(Icons.arrow_back_ios_new),
                  ),
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Recovery Password",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 56),
                  child: const Text(
                    "Please Enter Your Email Address To Recieve a Verification Code",
                    style: TextStyle(fontSize: 16, color: Color(0xff707B81)),
                  )),
              const SizedBox(
                height: 100,
              ),
              inPutItem(
                  title: "Email Address",
                  myOnChanged: (String? value) {},
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(
                height: 30,
              ),
              buttonUi("Continue"),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ));
  }
}
