import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tasks/component/text_widget.dart';
import 'package:tasks/constant/colors.dart';
import 'package:tasks/utils/utilis.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          64.ph,
          Lottie.asset("assets/json/hello.json"),
          32.ph,
          const TextWidget(
            title: "Welcome to our humble home Screen",
            color: AppColors.primiry,
            fontWeight: FontWeight.w700,
            fontSize: 24,

          )
        ],
      ),
    );
  }
}
