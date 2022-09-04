import 'package:flutter/material.dart';

import '../../../../configuration/frontend.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.controller,
      required this.inputType})
      : super(key: key);
  final String hintText;
  final String labelText;
  final TextInputType inputType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            labelText,
            style: TextStyle(
                color: FrontendConfiguration.KblackColor,
                fontFamily: "Poppins",
                letterSpacing: 0.2,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
        ),
        TextFormField(
          keyboardType: inputType,
          controller: controller,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(18),
              hintText: hintText,
              hintStyle: TextStyle(
                  color: FrontendConfiguration.KhintColor,
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              fillColor: FrontendConfiguration.KtextFieldColor,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none),
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none)),
        )
      ],
    );
  }
}
