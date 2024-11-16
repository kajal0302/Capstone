import 'dart:async';

import 'package:capstone/Screens/OnBoardingScreens/OnBoardingScreen_1.dart';
import 'package:capstone/common/color.dart';
import 'package:capstone/common/size.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),HomePageNavigation);
  }

  Future <void> HomePageNavigation() async{
    await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboardingscreen1()));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PrimaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Container(
                color:PrimaryColor,
                height: 200,
                width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Center(
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration:  BoxDecoration(
                            image:  DecorationImage(
                              image:  AssetImage('assets/images/logo.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      // Center(child: Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Text("MindEase",style: TextStyle(color:Colors.white,fontSize: px18,fontWeight: FontWeight.bold ),),
                      // ))
                    ],
                  ),
            ))
          ],
        ),
    );
  }
}
