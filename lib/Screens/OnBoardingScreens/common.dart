import 'package:capstone/common/color.dart';
import 'package:capstone/common/size.dart';
import 'package:flutter/material.dart';

class OnBoardingText extends StatelessWidget {
  final String lbl;
  const OnBoardingText({
    super.key,
    required this.lbl, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Text(lbl,style: TextStyle(color:Colors.black,fontSize: px15,fontWeight: FontWeight.bold ),),
    );
  }
}



class OnBoardScreenFloatingButton extends StatelessWidget {
  final VoidCallback onClick;
  const OnBoardScreenFloatingButton({
    super.key,
    required this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: px80,
      width: px80,
      child: FloatingActionButton(
        elevation: 2.0,
        backgroundColor: FloatingButtonColor,
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: PrimaryColor, // Border color
              width: 1.0, // Border width
            ),
            borderRadius: BorderRadius.circular(100.0)
        ),
        onPressed:onClick,child: Icon(Icons.arrow_forward_rounded,color: PrimaryColor,size: 30,),),
    );
  }
}