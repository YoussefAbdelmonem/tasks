import 'package:flutter/material.dart';
import 'package:tasks/component/text_form_filed_widget.dart';
import 'package:tasks/component/text_widget.dart';
import 'package:tasks/constant/colors.dart';
import 'package:tasks/utils/utilis.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// the Name from the profile
          30.ph,
          TextWidget(
              title: "full Name",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: greyText),
          15.ph,
          TextFormFieldWidget(
            onChanged: (String value) {

            },
            type: TextInputType.text,
          ),

          /// the email from the profile
          16.ph,
          TextWidget(
              title: "Email",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: greyText),
          16.ph,
          TextFormFieldWidget(
            onChanged: (String value) {

            },
            type: TextInputType.text,
          ),

          /// the mobile phone from the profile
          16.ph,
          TextWidget(
              title: "phone Number",

              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: greyText),
         16.ph,
          TextFormFieldWidget(
            onChanged: (String value) {

            },
            type: TextInputType.text,
          ),

        ],
      ),
    );
  }
}
