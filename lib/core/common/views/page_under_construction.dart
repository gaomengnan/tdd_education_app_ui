import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tdd_edu_app/core/res/resources.dart';

class PageUnderConstruction extends StatelessWidget {
  const PageUnderConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Resources.page404),),),
        child: SafeArea(
          child: Center(child: Lottie.asset(
              Resources.lottie404,
              fit: BoxFit.fitWidth,),),
        ),
      ),
    );
  }
}
