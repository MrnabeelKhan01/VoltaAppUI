import 'package:flutter/material.dart';
import 'package:volta/configuration/frontend.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({Key? key, required this.label, required this.detail}) : super(key: key);
final String label;
final String detail;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: FrontendConfiguration.KblackColor,
            fontFamily: "Poppins",
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height:6,),
        Text(
          detail,
          style: TextStyle(
            color: FrontendConfiguration.KblackColor,
            fontFamily: "Poppins",
            letterSpacing:0.2,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        )

      ],
    );
  }
}
