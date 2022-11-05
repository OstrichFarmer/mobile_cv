import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_cv/utils/colors.dart';
import 'package:mobile_cv/utils/constants.dart';
import 'package:mobile_cv/widget/change_theme_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  twitter() async {
    const url = 'https://twitter.com/Ostrich_Farmer';
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault)) {
      throw 'Could not launch $url';
    }
  }

  linkedin() async {
    const url = 'https://www.linkedin.com/in/stephen-joel56';
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault)) {
      throw 'Could not launch $url';
    }
  }

  github() async {
    const url = 'https://github.com/OstrichFarmer';
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault)) {
      throw 'Could not launch $url';
    }
  }

  facebook() async {
    const url = 'https://web.facebook.com/joel.stephen2';

    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: deviceOrientation == Orientation.portrait
          ? PreferredSize(
              preferredSize: const Size.fromHeight(240),
              child: Stack(
                children: [
                  Container(
                    height: 165,
                    color: AppColors.prussianBlue,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ChangeThemeButtonWidget(),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                        radius: 90,
                      ),
                    ),
                  ),
                ],
              ))
          : PreferredSize(
              preferredSize: const Size.fromHeight(170),
              child: Stack(
                children: [
                  Container(
                    height: 120,
                    color: AppColors.prussianBlue,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ChangeThemeButtonWidget(),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                        radius: 90,
                      ),
                    ),
                  ),
                ],
              )),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 20,
          right: 20,
          bottom: 20,
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                'Joel Ugwa N.',
                style: GoogleFonts.aclonica(
                    fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Text(
                'Flutter Mobile Engineer',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const Center(
              child: Text('Slack username: ostrich.farmer.56'),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_month),
                    Text(
                      'Feb. 29, 1996',
                      style: kAboutTextStyling,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.phone),
                    Text(
                      '+(234) 813 440 3016',
                      style: kAboutTextStyling,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.home),
                    Text(
                      'Abuja, Nig.',
                      style: kAboutTextStyling,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.mail),
                    Text(
                      'Joel.stephen56.sj@gmail.com',
                      overflow: TextOverflow.ellipsis,
                      style: kAboutTextStyling,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 12,
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Diligent software engineer with 4 years of experience in commercial application and software development, constantly seeking innovative solutions to everyday problems. In previous roles, slashed downtime by 15% and ensured 90% on-time project completion. I have honed my analytical thinking and collaboration skills. Have been an Engineering Lead for 5 projects, committed to mobile system development, and leading mobile development teams. An expert in GIS, JavaScript, Remote Sensing, HTML, Flutter, Python and Dart.",
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    twitter();
                  },
                  icon: const Icon(FontAwesomeIcons.twitter),
                  iconSize: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    facebook();
                  },
                  icon: const Icon(FontAwesomeIcons.facebook),
                  iconSize: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    linkedin();
                  },
                  icon: const Icon(FontAwesomeIcons.linkedin),
                  iconSize: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    github();
                  },
                  icon: const Icon(FontAwesomeIcons.github),
                  iconSize: 30,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
