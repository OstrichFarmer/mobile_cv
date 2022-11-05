import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_cv/utils/colors.dart';
import 'package:mobile_cv/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  twitter() async {
    const url = 'https://twitter.com/Ostrich_Farmer'; // or add your URL here
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault)) {
      throw 'Could not launch $url';
    }
  }

  linkedin() async {
    const url =
        'https://www.linkedin.com/in/stephen-joel56'; // or add your URL here
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault)) {
      throw 'Could not launch $url';
    }
  }

  github() async {
    const url = 'https://github.com/OstrichFarmer'; // or add your URL here
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault)) {
      throw 'Could not launch $url';
    }
  }

  facebook() async {
    const url = 'https://web.facebook.com/joel.stephen2';

    /// or add your URL here
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.platformDefault)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
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
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.light_mode,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
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
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
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
            Center(
              child: Text(
                'Joel Ugwa',
                style: GoogleFonts.aclonica(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Center(
              child: Text(
                'Flutter Mobile Engineer',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w500),
              ),
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
                      'February 29, 1996',
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
                      'Abuja, Nigeria',
                      style: kAboutTextStyling,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.mail),
                    Text(
                      'Joel.stephen56.sj@gmail.com',
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
                  color: Colors.blue,
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
                  color: Colors.blue,
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
                  color: Colors.blue,
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
                    color: Colors.blue),
              ],
            )
          ],
        ),
      ),
    );
  }
}
