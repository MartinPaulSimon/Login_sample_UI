// ignore_for_file: avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:login_sample/core/constants.dart';

import '../widgets/common_textfield.dart';
import '../widgets/custom_text.dart';
import '../widgets/login_options.dart';
import '../widgets/title_name.dart';
import '../widgets/title_message.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          title: const TitleName("Log in"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleMessage(),
                  const SizedBox(height: 10),
                  const LoginOptions(),
                  kHeight30,
                  const CustomText(
                    "Email",
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  kHeight20,
                  CommonTextField(
                    hintText: "hey@olivercederborg.com",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email cannot be blank';
                      } else {
                        return null;
                      }
                    },
                  ),
                  kHeight30,
                  const CustomText(
                    "Password",
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  kHeight20,
                  CommonTextField(
                    hintText: "Enter your password",
                    validator: (value) =>
                        value!.isEmpty ? 'Password cannot be blank' : null,
                  ),
                  kHeight20,
                  Center(
                    child: Container(
                      height: 44.0,
                      width: 350,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 243, 59, 224),
                            Color.fromARGB(255, 143, 43, 232),
                          ],
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          print("login button pressed");
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  kHeight20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CustomText(
                        "Don't have an account?",
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      kWidth10,
                      Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
