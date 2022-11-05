import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_cv/screens/education_screen.dart';
import 'package:mobile_cv/screens/experience_screen.dart';
import 'package:mobile_cv/screens/language_screen.dart';
import 'package:mobile_cv/screens/profile_screen.dart';
import 'package:mobile_cv/utils/colors.dart';

class GoogleNavBar extends StatefulWidget {
  const GoogleNavBar({Key? key}) : super(key: key);

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  int _selectIndex = 0;

  static final List<Widget> _navScreen = <Widget>[
    const ProfileScreen(),
    const EducationScreen(),
    const ExperienceScreen(),
    const LanguageScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navScreen.elementAt(_selectIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: AppColors.prussianBlue,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: GNav(
            color: Colors.grey.shade800,
            backgroundColor: AppColors.prussianBlue,
            activeColor: AppColors.prussianBlue,
            tabBackgroundColor: AppColors.lightGrey,
            padding: const EdgeInsets.all(10),
            tabMargin: const EdgeInsets.all(5),
            gap: 9,
            selectedIndex: _selectIndex,
            onTabChange: (index) {
              setState(() {
                _selectIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: FontAwesomeIcons.solidUser,
                iconColor: Colors.white,
                text: 'Profile',
              ),
              GButton(
                icon: FontAwesomeIcons.book,
                text: 'Education',
                iconColor: Colors.white,
              ),
              GButton(
                icon: Icons.work,
                text: 'Experience',
                iconColor: Colors.white,
              ),
              GButton(
                icon: Icons.language,
                text: 'Languages',
                iconColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
