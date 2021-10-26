import 'package:aneeque_app/screens/cart/cart_screen.dart';
import 'package:aneeque_app/screens/complete_profile/complete_profile.dart';
import 'package:aneeque_app/screens/details/details_screen.dart';
import 'package:aneeque_app/screens/favorites/favorites.dart';
import 'package:aneeque_app/screens/forgot_password/forgot_password.dart';
import 'package:aneeque_app/screens/home/home.dart';
import 'package:aneeque_app/screens/onboarding/onboarding.dart';
import 'package:aneeque_app/screens/otp_screen/otp_screen.dart';
import 'package:aneeque_app/screens/profile/profile.dart';
import 'package:aneeque_app/screens/sign_in/sign_in.dart';
import 'package:aneeque_app/screens/sign_up/sign_up.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  Onboarding.routeName: (context) => const Onboarding(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  Favorites.routeName: (context) => const Favorites(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
};