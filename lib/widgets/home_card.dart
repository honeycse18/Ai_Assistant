import 'package:flutter/material.dart';
import 'package:google_translator/helper/global.dart';
import 'package:google_translator/screens/model/home_type.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {
  final HomeType homeType;
  HomeCard({super.key, required this.homeType});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      color: Color.fromARGB(255, 71, 222, 241),
      child: homeType.leftAlign
          ? Row(
              children: [
                Container(
                  width: mq.width * .35,
                  padding: homeType.padding,
                  child: Lottie.asset('assets/lottie/${homeType.lottie}',
                      width: mq.width * .35),
                ),
                Spacer(),
                Text(
                  homeType.title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            )
          : Row(
              children: [
                Spacer(
                  flex: 2,
                ),
                Text(
                  homeType.title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
                Spacer(),
                Container(
                  width: mq.width * .35,
                  padding: homeType.padding,
                  child: Lottie.asset('assets/lottie/${homeType.lottie}',
                      width: mq.width * .35),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
    );
  }
}
