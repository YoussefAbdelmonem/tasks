import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tasks/component/button_widget.dart';
import 'package:tasks/component/text_form_filed_widget.dart';
import 'package:tasks/component/text_widget.dart';
import 'package:tasks/constant/colors.dart';
import 'package:tasks/task1/screens/home/home_screen.dart';
import 'package:tasks/utils/utilis.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
32.ph,
                  Lottie.asset("assets/json/welcome.json"),
                  32.ph,
                  const TextWidget(
                    title: "email",
                    color: greyText,
                    fontSize: 12,
                  ),
                 14.ph,
                  TextFormFieldWidget(
                    onChanged: (String value) {
                    },
                    controller: emailController,
                    hintText: "Enter your email",
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your email";
                      }
                    },
                    type: TextInputType.emailAddress,
                  ),
                 24.ph,
                  const TextWidget(
                    title: "password",
                    color: greyText,
                    fontSize: 12,
                  ),
                  14.ph,
                  TextFormFieldWidget(
                    onChanged: (String value) {
                    },
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your password";
                      }
                    },
                    controller: passwordController,
                    hintText: "Enter your password",
                    type: TextInputType.visiblePassword,
                    password: true,

                  ),
                  64.ph,
                  ButtonWidget(
                    onTap: (){
                      if(formKey.currentState!.validate()){
                        Utils.openScreen(context,HomeScreen());
                      }
                    },
                  ),


                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
