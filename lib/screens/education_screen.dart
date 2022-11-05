import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 20,
          right: 20,
          bottom: 20,
        ),
        child: ListView(children: [
          Card(
            elevation: 5,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.20,
              width: double.infinity,
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Education',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
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
                      ListView(
                        children: const [
                          Text(
                            'Federal University of Technology Akure',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Text(
                            'Remote Sensing & GIS',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Nov 2015 - Oct 2021',
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
                        children: const [
                          Text(
                            'Google Africa Developers Scholarship',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          Text(
                            'Web Specialist',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          Text(
                            'April 2021 - Sept 2021 | 5 months',
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
          const SizedBox(
            height: 20,
          ),
          Card(
            elevation: 5,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              child: ListView(
                children: [
                  const Text(
                    'Skills',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
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
                      const Image(
                        // color: Colors.yellow,
                        image: AssetImage('assets/images/flutter.png'),
                        height: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Flutter',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          SizedBox(
                            height: 15,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: const LinearProgressIndicator(
                              backgroundColor: Colors.grey,
                              color: AppColors.prussianBlue,
                              value: 0.8,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/css.png'),
                        height: 30,
                        color: Colors.orange,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'CSS',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          SizedBox(
                            height: 15,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: const LinearProgressIndicator(
                              backgroundColor: Colors.grey,
                              color: AppColors.prussianBlue,
                              value: 0.75,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/html.png'),
                        height: 30,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'HTML',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          SizedBox(
                            height: 15,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: const LinearProgressIndicator(
                              backgroundColor: Colors.grey,
                              color: AppColors.prussianBlue,
                              value: 0.95,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Image(
                        // color: Colors.yellow,
                        image: AssetImage('assets/images/dart.png'),
                        height: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dart',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          SizedBox(
                            height: 15,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: const LinearProgressIndicator(
                              backgroundColor: Colors.grey,
                              color: AppColors.prussianBlue,
                              value: 0.8,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Image(
                        // color: Colors.yellow,
                        image: AssetImage('assets/images/python.png'),
                        height: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Python',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          SizedBox(
                            height: 15,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: const LinearProgressIndicator(
                              backgroundColor: Colors.grey,
                              color: AppColors.prussianBlue,
                              value: 0.5,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Image(
                        // color: Colors.yellow,
                        image: AssetImage('assets/images/javascript.png'),
                        height: 30,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Javascript',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16),
                          ),
                          SizedBox(
                            height: 15,
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: const LinearProgressIndicator(
                              backgroundColor: Colors.grey,
                              color: AppColors.prussianBlue,
                              value: 0.7,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
