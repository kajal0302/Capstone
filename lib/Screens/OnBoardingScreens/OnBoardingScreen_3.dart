import 'package:capstone/Screens/OnBoardingScreens/common.dart';
import 'package:flutter/material.dart';

class Onboardingscreen3 extends StatefulWidget {
  const Onboardingscreen3({super.key});

  @override
  State<Onboardingscreen3> createState() => _Onboardingscreen3State();
}

class _Onboardingscreen3State extends State<Onboardingscreen3> {
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
                        OnBoardingText(lbl: "Take control of your mental"),
                        OnBoardingText(lbl: "well-being with personalized"),
                        OnBoardingText(lbl: "relaxation exercises designed"),
                        OnBoardingText(lbl: "just for you.")
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
        child:OnBoardScreenFloatingButton(onClick: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboardingscreen3()));
        })
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
    );
  }
}
