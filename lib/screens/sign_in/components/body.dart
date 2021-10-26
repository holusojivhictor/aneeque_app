import 'package:aneeque_app/components/no_account_text.dart';
import 'package:aneeque_app/components/social_card.dart';
import 'package:aneeque_app/screens/sign_in/components/sign_in_form.dart';
import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionedScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                Text("Welcome Back",
                  style: headingStyle,
                ),
                SizedBox(height: getProportionedScreenHeight(15)),
                const Text("Sign in with your email and password \nor continue with social media",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                const SignInForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/images/icons8-google-48.png",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/images/logo-facebookpng-32214.png",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/images/icons8-twitter-48.png",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionedScreenHeight(20)),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}