import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_cv/utils/colors.dart';
import 'package:mobile_cv/utils/constants.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Experience',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 30,
            right: 20,
            bottom: 20,
          ),
          child: Column(
            children: [
              Card(
                elevation: 5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 220,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Work Experience',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: List.generate(
                            150 ~/ 2,
                            (index) => Expanded(
                                  child: Container(
                                    color: index % 2 == 0
                                        ? Colors.transparent
                                        : Colors.grey,
                                    height: 1,
                                  ),
                                )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'TT',
                            style: kExperiencetagTextStyle,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Flutter Mobile Developer',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              Text(
                                'TechTink Solutions Ltd, Abuja',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'July 2022 - Date | 4 months',
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            'PW',
                            style: kExperiencetagTextStyle,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Chief Product Officer',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              Text(
                                'ParkWell Africa, Lagos',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                              Text(
                                'Nov 2021 - April 2022 | 5 months',
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('KP', style: kExperiencetagTextStyle),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Flutter Mobile Developer',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              Text(
                                'Kwikpay Credit, Lagos',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                              Text(
                                'Aug 2022 - Nov 2021| 3.5 months',
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "I like to build products that empower people and make their jobs/lives easier. That's my whole mantra, if I'm not helping someone being more productive then I'm working on the wrong project. I couldn't care less for line-of-business applications. Those are nice and might impact the bottom line of the company, but unless these applications make someone's life easier I have little motivation on working on such an application.",
                style: GoogleFonts.lato(
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
