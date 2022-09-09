import 'package:flutter/material.dart';

class SildeDots extends StatelessWidget {
  bool isAcitve;
  SildeDots(this.isAcitve);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 150,
        
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: isAcitve ? 7 : 5,
      width: isAcitve ? 20 : 20,
      decoration: BoxDecoration(
        color: isAcitve ? Theme.of(context).primaryColor : Colors.grey,
       
      ),
      );
  }
}