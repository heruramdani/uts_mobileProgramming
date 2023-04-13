import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts_flutter/shared/theme.dart';

import '../widget/collection.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kWhiteColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 40,
                      bottom: 20,
                    ),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage('assets/profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Heru Ramdani',
                    style: black2TextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Mobile Programming | Electrical Engineering',
                    style: black2TextStyle,
                  )
                ],
              ),
            ),
            Container(
              height: 40,
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '24 Collection',
                            style: black2TextStyle,
                          ),
                          Container(
                            width: 80,
                            height: 2,
                            decoration: BoxDecoration(
                              color: kBlueColor,
                              borderRadius: BorderRadius.circular(18),
                            ),
                          )
                        ],
                      ), // Menambahkan jarak horizontal antara kedua Text
                      Text(
                        '12 history',
                        style: greyTextStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
                bottom: 200,
              ),
              color: kWhiteColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Collection(
                        title: 'Best Chairs',
                        imageUrl: 'assets/chair_light_orange_bg.png',
                        color: kCollection2Color,
                      ),
                      Collection(
                        title: 'Best Lamps',
                        imageUrl: 'assets/lamp_light_gray_bg.png',
                        color: kWhiteColor,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Collection(
                        title: 'Best Chairs',
                        imageUrl: 'assets/chair_light_gray_bg.png',
                        color: kWhiteColor,
                      ),
                      Collection(
                        title: 'Best Choice',
                        imageUrl: 'assets/plant_light_blue_bg.png',
                        color: kCollectionColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
