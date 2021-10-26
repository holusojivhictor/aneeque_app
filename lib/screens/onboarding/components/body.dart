import 'package:aneeque_app/components/default_button.dart';
import 'package:aneeque_app/constants.dart';
import 'package:aneeque_app/screens/onboarding/components/onboarding_content.dart';
import 'package:aneeque_app/screens/sign_in/sign_in.dart';
import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/urban-8.png",
      "title": "Let the journey start",
      "text": "Welcome to Aneeque Store, let's shop!"
    },
    {
      "image": "assets/images/urban-7.png",
      "title": "Take control of your shopping life",
      "text": "We help people connect with stores \naround Nigeria"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            const Spacer(),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) {
                  return OnboardingContent(
                    image: onboardingData[index]["image"],
                    title: onboardingData[index]["title"],
                    text: onboardingData[index]["text"],
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionedScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: getProportionedScreenWidth(30)),
                    DefaultButton(
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                      text: "Start now",
                    ),
                    SizedBox(height: getProportionedScreenWidth(25)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(onboardingData.length, (index) => buildDot(index: index)),
                    ),
                    SizedBox(height: getProportionedScreenWidth(20)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Constants.kAnimationDuration,
      margin: const EdgeInsets.only(right: Constants.kPadding / 2),
      height: 6,
      width: currentPage == index ? 25 : 25,
      decoration: BoxDecoration(
        color: currentPage == index ? Constants.kPrimaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}