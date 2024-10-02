import 'package:flutter/material.dart';
import 'package:google_translator/helper/global.dart';
import 'package:google_translator/helper/pref.dart';
import 'package:google_translator/screens/home.dart';
import 'package:google_translator/screens/onboarding_screen.dart';
import 'package:google_translator/widgets/custom_loading.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //wait for some time on splash & then move to next screen
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() =>
          Pref.showOnboarding ? const OnboardingScreen() : const MyHomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    //initializing device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      //body
      body: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //lottie loading
              Center(child: const CustomLoading()),
            ],
          ),
        ),
      ),
    );
  }
}
