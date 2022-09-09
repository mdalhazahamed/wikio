import 'package:flutter/material.dart';
import 'package:wikio/ui/styles/styles.dart';

class Verifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 50),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  "Verification code",
                  style: myTextstyle18(Colors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
