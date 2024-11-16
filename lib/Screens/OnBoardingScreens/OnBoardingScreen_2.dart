import 'package:capstone/Screens/OnBoardingScreens/OnBoardingScreen_3.dart';
import 'package:capstone/Screens/OnBoardingScreens/common.dart';
import 'package:flutter/material.dart';

class Onboardingscreen2 extends StatefulWidget {
  const Onboardingscreen2({super.key});

  @override
  State<Onboardingscreen2> createState() => _Onboardingscreen2State();
}

class _Onboardingscreen2State extends State<Onboardingscreen2> {
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
                        OnBoardingText(lbl: "Discover Simple techniques to"),
                        OnBoardingText(lbl: "ease stress and enhance"),
                        OnBoardingText(lbl: "mindfullness is your daily life.")

                      ],
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ),

      floatingActionButton:
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: OnBoardScreenFloatingButton(onClick: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboardingscreen3()));

        })
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
    );
  }
}
