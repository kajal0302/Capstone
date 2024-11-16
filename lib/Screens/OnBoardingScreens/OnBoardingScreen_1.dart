import 'package:capstone/Screens/OnBoardingScreens/OnBoardingScreen_2.dart';
import 'package:capstone/Screens/OnBoardingScreens/common.dart';
import 'package:flutter/material.dart';

class Onboardingscreen1 extends StatefulWidget {
  const Onboardingscreen1({super.key});

  @override
  State<Onboardingscreen1> createState() => _Onboardingscreen1State();
}

class _Onboardingscreen1State extends State<Onboardingscreen1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 120,),
            Center(
              child: Container(
                height: 450,
                width: 250,
                // color: PrimaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration:  BoxDecoration(
                          image:  DecorationImage(
                            image:  AssetImage('assets/images/logo.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OnBoardingText(lbl: "Welcome to Mindease! Your"),
                          OnBoardingText(lbl: "journey to a calm and focused"),
                          OnBoardingText(lbl: "mind starts here.")
                        ],
                      ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: OnBoardScreenFloatingButton(onClick: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboardingscreen2()));
        }),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
    );
  }
}




