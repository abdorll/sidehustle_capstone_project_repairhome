// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:sidehustle_capstone/screens/home_page.dart';
import 'package:sidehustle_capstone/screens/signup.dart';
import 'package:sidehustle_capstone/utils/colors.dart';
import 'package:sidehustle_capstone/utils/constants.dart';
import 'package:sidehustle_capstone/widgets/widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: liteWhite,
      body: SideSpace(
        20,
        10,
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const YSpace(30),
              SizedBox(
                width: 130,
                height: 130,
                child: Image.asset('assets/images/logo_2.png'),
              ),
              const YSpace(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextOf('Login to your account', 17, FontWeight.bold, black)
                ],
              ),
              const YSpace(10),
              TextInput(hint: 'Email'),
              const YSpace(20),
              TextInput(hint: 'Password'),
              const YSpace(20),
              Button(
                  action: () {
                    goto(context, HomePage());
                  },
                  text: 'Sign in'),
              const YSpace(20),
              TextOf('• Or sign in with -', 15, FontWeight.w500, ash),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageCard(path: google),
                  ImageCard(path: facebook),
                  ImageCard(path: twitter),
                ],
              ),
              const YSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextOf("• Don't have an account? ", 15, FontWeight.w500, ash),
                  InkWell(
                    child: TextOf(" Sign up", 15, FontWeight.w500, blue),
                    onTap: () {
                      goto(context, SignUpScreen());
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  ImageCard({
    required this.path,
    Key? key,
  }) : super(key: key);
  String path;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 90,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Image.asset(
          path,
        ),
      ),
    );
  }
}
