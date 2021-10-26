import 'package:aneeque_app/screens/complete_profile/components/complete_profile_form.dart';
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
                "Complete Profile",
                style: headingStyle,
              ),
              SizedBox(height: getProportionedScreenHeight(15)),
              const Text(
                "Complete your details or continue \nwith social media",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              const CompleteProfileForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              Text("By continuing you confirm that you agree \nwith our terms and conditions.", style: TextStyle(
                  fontSize: getProportionedScreenWidth(13)), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}