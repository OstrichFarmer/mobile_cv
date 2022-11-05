import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    print(orientation);
    return Scaffold(
      appBar: AppBar(
        //leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text(
          'Education',
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
                  height: 170,
                  width: double.infinity,
                  child: ListView(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Education',
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
                            'F',
                            style: kExperiencetagTextStyle,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Federal University of Technology Akure',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              const Text(
                                'Remote Sensing & GIS',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Nov 2015 - Oct 2021',
                                style: TextStyle(color: Colors.grey.shade700),
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
                            'G',
                            style: kExperiencetagTextStyle,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Google Africa Developers Scholarship',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16),
                              ),
                              const Text(
                                'Web Specialist',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                              Text(
                                'April 2021 - Sept 2021 | 5 months',
                                style: TextStyle(color: Colors.grey.shade700),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
