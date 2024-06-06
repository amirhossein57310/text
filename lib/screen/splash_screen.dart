import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/another_screen.dart';
import 'package:flutter_application_1/screen/my_home_page.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

bool click = false;

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      if (click) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => AnotherScreen(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280),
            child: SvgPicture.asset(
              'assets/images/logo.svg',
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            child: Text(
              'version 17.3.5',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
