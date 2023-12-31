import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes_ecommerce/config/routing/routes.dart';

import '../../../config/thems/app_colors.dart';
import '../../../shard_components/general.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isinVisiblePassword = true;
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
                height: 70,
              ),
              const Text(
                "Hello Again!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Welcome Back You’ve Been Missed!",
                style: TextStyle(fontSize: 16, color: Color(0xff707B81)),
              ),
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
              inPutItem(
                  title: "Password",
                  obscureText: isinVisiblePassword,
                  myOnChanged: (String? value) {},
                  keyboardType: TextInputType.visiblePassword,
                  suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isinVisiblePassword = !isinVisiblePassword;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset(
                          isinVisiblePassword
                              ? "assets/icons/in_eye.svg"
                              : "assets/icons/eye.svg",
                        ),
                      ))),
              Container(
                  alignment: AlignmentDirectional.centerEnd,
                  margin: const EdgeInsets.only(bottom: 40),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.forgetPassword);
                    },
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Text(
                          "Recovery Password",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff707B81)),
                        )),
                  )),
              buttonUi("Sign In"),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 54),
                    backgroundColor: Colors.white),
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/google.svg"),
                label: const Text(
                  "Sign in with google",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.signUp);
                },
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(color: Color(0xff707B81)),
                    ),
                    Text(
                      "Sign Up for free",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ));
  }
}
