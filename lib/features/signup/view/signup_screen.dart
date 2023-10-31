import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/thems/app_colors.dart';
import '../../../shard_components/general.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                "Create Account",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Let’s Create Account Together",
                style: TextStyle(fontSize: 16, color: Color(0xff707B81)),
              ),
              const SizedBox(
                height: 100,
              ),
              inPutItem(
                  title: "Your Name",
                  myOnChanged: (String? value) {},
                  keyboardType: TextInputType.text),
              const SizedBox(
                height: 20,
              ),
              inPutItem(
                  title: "Email Address",
                  myOnChanged: (String? value) {},
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(
                height: 20,
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
              const SizedBox(
                height: 40,
              ),
              buttonUi("Sign Up"),
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
                  "Sign up with google",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(color: Color(0xff707B81)),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ));
  }
}
