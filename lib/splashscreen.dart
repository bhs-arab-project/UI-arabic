import 'package:bahasa_arab/form/sign_in.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SphScreen extends StatefulWidget {
  @override
  _SphScreenState createState() => _SphScreenState();
}

class _SphScreenState extends State<SphScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        width: 100,
        height: 100,
        child: AnimatedSplashScreen(
          splash: Image.asset("assets/image/icon2.png"),
          nextScreen: LoginScreen(),
          splashIconSize: 300,
          curve: Curves.fastOutSlowIn,
          splashTransition: SplashTransition.scaleTransition,
          duration: 400,
        ),
      ),
    );
  }
}
