import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Languages',
          style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        toolbarHeight: 70,
        backgroundColor: AppColors.prussianBlue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, top: 40, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: AppColors.prussianBlue,
              padding: const EdgeInsets.all(8),
              child: const Text(
                'Please select a language:',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const Divider(thickness: 2, color: Colors.black, height: 14),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: AppColors.prussianBlue,
            ),
            ListTile(
              onTap: (() {
                setState(() {
                  selected = 0;
                });
              }),
              selected: selected == 0 ? true : false,
              title: const Text('English'),
              trailing: const Icon(FontAwesomeIcons.check),
            ),
            const Divider(
              color: AppColors.prussianBlue,
            ),
            ListTile(
              onTap: (() {
                setState(() {
                  selected = 1;
                });
              }),
              selected: selected == 1 ? true : false,
              title: const Text('Igbo'),
              trailing: const Icon(FontAwesomeIcons.check),
            ),
            const Divider(
              color: AppColors.prussianBlue,
            ),
            ListTile(
              onTap: (() {
                setState(() {
                  selected = 2;
                });
              }),
              selected: selected == 2 ? true : false,
              title: const Text('Yoruba'),
              trailing: const Icon(FontAwesomeIcons.check),
            ),
            const Divider(
              color: AppColors.prussianBlue,
            ),
            ListTile(
              onTap: (() {
                setState(() {
                  selected = 3;
                });
              }),
              selected: selected == 3 ? true : false,
              title: const Text('Hausa'),
              trailing: const Icon(FontAwesomeIcons.check),
            ),
            const Divider(
              color: AppColors.prussianBlue,
            ),
          ],
        ),
      ),
    );
  }
}
