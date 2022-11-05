import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_cv/utils/colors.dart';
import 'package:mobile_cv/utils/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(240),
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
                      '+2348134403016',
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
            )
          ],
        ),
      ),
    );
  }
}
