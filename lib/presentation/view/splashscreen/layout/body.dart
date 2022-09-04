import 'dart:async';
import 'package:flutter/material.dart';
import 'package:volta/configuration/frontend.dart';
import 'package:volta/presentation/view/pin_view/pin_view.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    Timer(
        const Duration(seconds:6),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const PinView())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:FrontendConfiguration.KWhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
             Image.asset("assets/images/logo.png",height:200,width:200,),
            Text(
              "Volta - Virtual Inspector",
              style: TextStyle(
                color: FrontendConfiguration.KblackColor,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 21,
              ),
            )
          ],
        ),
      ),
    );
  }
}
