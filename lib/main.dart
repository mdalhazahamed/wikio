import 'package:flutter/material.dart';
import 'package:wikio/ui/animations/SplashTransition.dart';
import 'package:wikio/ui/login_signup/authentications.dart';
import 'package:wikio/ui/login_signup/forgets.dart';
import 'package:wikio/ui/login_signup/verifications.dart';


import 'ui/login_signup/next.dart';
import 'ui/widgets/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/authentications': (context) => Authentications(),
        '/verifications': (context) =>  Verifications(),
       '/forgets': (context) =>  Forgets(),
      },
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

