import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_cv/utils/colors.dart';

class GoogleNavBar extends StatefulWidget {
  const GoogleNavBar({Key? key}) : super(key: key);

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  @override
  int selectIndex = 0;

  static final List<Widget> _NavScreen = <Widget>[];

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: GNav(
            color: Colors.grey.shade800,
            backgroundColor: Colors.grey,
            activeColor: AppColors.prussianBlue,
            tabBackgroundColor: AppColors.lightGrey,
            padding: EdgeInsets.all(20),
            tabMargin: EdgeInsets.all(5),
            gap: 9,
            tabs: [
              GButton(
                icon: FontAwesomeIcons.solidUser,
                text: 'Profile',
              ),
              GButton(
                icon: FontAwesomeIcons.book,
                text: 'Education',
              ),
              GButton(
                icon: Icons.work,
                text: 'Experience',
              )
            ],
          ),
        ),
      ),
    );
  }
}
