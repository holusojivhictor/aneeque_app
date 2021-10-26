import 'package:aneeque_app/routes.dart';
import 'package:aneeque_app/screens/onboarding/onboarding.dart';
import 'package:aneeque_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AneequeStore());
}

class AneequeStore extends StatelessWidget {
  const AneequeStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aneeque Store',
      theme: theme(context),
      initialRoute: Onboarding.routeName,
      routes: routes,
    );
  }
}