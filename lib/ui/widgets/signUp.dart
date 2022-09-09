import 'package:flutter/material.dart';

import '../styles/styles.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isRemenberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 60),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outlined,
                  ),
                  hintText: "Username",
                  hintStyle: myTextstyle12(Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone_outlined,
                  ),
                  hintText: "Mobile Number ",
                  hintStyle: myTextstyle12(Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 20,
               
                child: Row(
                  children: [
                    Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Colors.white,
                      ),
                      child: Checkbox(
                        value: isRemenberMe,
                        checkColor: Colors.white,
                        activeColor: Colors.blue,
                        onChanged: (value) {
                          setState(() {
                            isRemenberMe = value!;
                          });
                        },
                      ),
                    ),
                   
                    Text(
                      "Remember me",
                      style: myTextstyle12(Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(height: 60),
              FlatButton(
                minWidth: double.infinity,
                height: 55,
                onPressed: () {
                  Navigator.pushNamed(context, '/verifications');
                },
                child: Text(
                  "Next",
                  style: myTextstyle18(Colors.white),
                ),
                shape: myRectangleBorder,
                color: Colors.blue,
                textColor: Colors.white,
              ),
              SizedBox(height: 90),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey[350],
              ),
              SizedBox(height: 15),
              Text(
                "Or Login with ",
                style: myTextstyle12(Colors.grey),
              ),
               SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/facebook.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  Container(
                     height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/google.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}