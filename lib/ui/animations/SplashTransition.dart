import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';

import '../login_signup/next.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.network('https://assets10.lottiefiles.com/packages/lf20_2xr17qxt.json'), 
      
      backgroundColor: Colors.white,
      nextScreen: NEXT(),
      splashIconSize: 250,
      duration: 2000,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: Duration(seconds: 1),
      );
  }
}
