import 'package:flutter/material.dart';
import 'package:wikio/ui/widgets/signUp.dart';

import '../styles/styles.dart';
import '../widgets/login.dart';

class Authentications extends StatelessWidget {
  const Authentications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Image.asset(
            "assets/images/logo.png",
            width: 200,
          ),
          
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Text(
                  "Login",
                  style: myTextstyle18(Colors.grey[800]),
                ),
              ),
              Tab(
                child: Text(
                  "Sign up",
                  style: myTextstyle18(Colors.grey[800]),
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.white,
              child: Login(),
            ),
            Container(
              color: Colors.white,
              child: SignUp(),
            ),
          ],
        ),
      ),
    );
  }
}
