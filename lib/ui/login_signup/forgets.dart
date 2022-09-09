import 'package:flutter/material.dart';
import 'package:wikio/ui/styles/styles.dart';

class Forgets extends StatelessWidget {
  const Forgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Frogets", style: myTextstyle18(Colors.accents),)),
    );
  }
}