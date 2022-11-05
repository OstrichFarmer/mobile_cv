import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_cv/utils/colors.dart';

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
    );
  }
}
