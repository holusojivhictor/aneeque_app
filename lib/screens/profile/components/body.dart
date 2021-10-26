import 'package:aneeque_app/screens/profile/components/profile_menu.dart';
import 'package:aneeque_app/screens/profile/components/profile_picture.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePicture(),
        const SizedBox(height: 20),
        ProfileMenu(
          press: () {},
          text: "My Account",
          icon: Icons.person_outline,
        ),
        ProfileMenu(
          press: () {},
          text: "Notifications",
          icon: Icons.notifications_outlined,
        ),
        ProfileMenu(
          press: () {},
          text: "Settings",
          icon: Icons.settings,
        ),
        ProfileMenu(
          press: () {},
          text: "Help Center",
          icon: Icons.help_outline,
        ),
        ProfileMenu(
          press: () {},
          text: "Log Out",
          icon: Icons.logout_outlined,
        ),
      ],
    );
  }
}