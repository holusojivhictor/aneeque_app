import 'package:aneeque_app/components/social_card.dart';
import 'package:aneeque_app/screens/sign_up/components/sign_up_form.dart';
import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionedScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              SizedBox(height: getProportionedScreenHeight(15)),
              const Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
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
              Text("By continuing you confirm that you agree \nwith our terms and conditions.", style: TextStyle(
                  fontSize: getProportionedScreenWidth(13)), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}