import 'package:flutter/material.dart';
import 'package:volta/configuration/frontend.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.image, required this.label})
      : super(key: key);
  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(color: FrontendConfiguration.KWhiteColor),
            child: Center(
                child: Image.asset(
              image,
              height: 55,
              width: 96,
            )),
          ),
        ),
        SizedBox(
          height:30,
          width:105,
          child: RichText(
            textAlign:TextAlign.center,
           text:TextSpan(text:label,
               style: TextStyle(
                   color: FrontendConfiguration.KblackColor,
                   fontFamily: "Poppins",
                   fontSize: 10,
                   fontWeight: FontWeight.w300)
          ),
          ))
      ],
    );
  }
}
