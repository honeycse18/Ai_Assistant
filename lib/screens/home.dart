import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_translator/helper/global.dart';
import 'package:google_translator/helper/pref.dart';
import 'package:google_translator/screens/model/home_type.dart';
import 'package:google_translator/widgets/home_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnboarding = false;
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              appName,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.brightness_4_rounded,
                    color: Colors.blue,
                    size: 26,
                  ))
            ],
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: mq.width * .04,
              vertical: mq.height * .015,
            ),
            children:
                HomeType.values.map((e) => HomeCard(homeType: e)).toList(),
          )),
    );
  }
}
