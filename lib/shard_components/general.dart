import 'package:flutter/material.dart';

import '../config/thems/app_colors.dart';

Widget inPutItem(
    {required String title,
    required Function(String?) myOnChanged,
    TextInputType? keyboardType,
    bool? obscureText,
    Widget? suffixIcon,
    String? hit}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text("$title",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      const SizedBox(
        height: 10,
      ),
      TextFormField(
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsetsDirectional.only(start: 20),
          filled: true,
          hintStyle:
              const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
          hintText: hit,
          fillColor: Colors.white70,
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.primaryColor.withOpacity(.177), width: .5),
            borderRadius: BorderRadius.circular(50.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor, width: .5),
            borderRadius: BorderRadius.circular(50.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: .5),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        onChanged: (String? value) {
          myOnChanged(value);
        },
      )
    ],
  );
}

Widget buttonUi(String title) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 54),
          backgroundColor: AppColors.primaryColor),
      onPressed: () {},
      child: Text(
        "${title}",
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ));
}
