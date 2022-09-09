import 'package:flutter/material.dart';
import 'dart:async';

import '../animations/pages_animation.dart';
import '../animations/silderDots.dart';
import '../models/silder.dart';
import '../styles/styles.dart';

class NEXT extends StatefulWidget {
  const NEXT({Key? key}) : super(key: key);

  @override
  State<NEXT> createState() => _NEXTState();
}

class _NEXTState extends State<NEXT> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  PageView.builder(
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    itemCount: slideList.length,
                    itemBuilder: (context, i) => SilderItem(i),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 40),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for (int i = 0; i < slideList.length; i++)
                              if (i == _currentPage)
                                SildeDots(true)
                              else
                                SildeDots(false)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Card(
                  elevation: 1,
                  margin: EdgeInsets.zero,
                  child: FlatButton(
                    onPressed: () { 
                         Navigator.pushNamed(context, '/authentications');
                    },
                    child: SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "NEXT",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
