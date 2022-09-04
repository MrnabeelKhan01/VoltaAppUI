import 'package:flutter/material.dart';
import 'package:volta/configuration/frontend.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.buttonText}) : super(key: key);
 final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: FrontendConfiguration.KblackColor,
      borderRadius:BorderRadius.circular(6)),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            color: FrontendConfiguration.KWhiteColor,
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing:0.2
          ),
        ),
      ),
    );
  }
}
