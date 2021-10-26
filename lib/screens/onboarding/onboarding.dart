import 'package:aneeque_app/screens/onboarding/components/body.dart';
import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  static String routeName = "/onboarding_screen";
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}