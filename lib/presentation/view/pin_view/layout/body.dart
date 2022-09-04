import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:volta/configuration/frontend.dart';
import 'package:volta/presentation/elements/button_widget.dart';
import 'package:volta/presentation/view/summary_view/summary_view.dart';

class PinBody extends StatelessWidget {
  const PinBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontendConfiguration.KWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: 138,
                  width: 128,
                ),
                Text(
                  "Enter PIN Code",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    fontSize: 21,
                    letterSpacing:0.2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Please enter the PIN code provided \n to you by ",
                      style: TextStyle(
                        color: FrontendConfiguration.KblackColor,
                        fontFamily: "Poppins",
                        fontSize: 12,
                        letterSpacing:0.2,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: "Volta",
                          style: TextStyle(
                            color: FrontendConfiguration.KblackColor,
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType:TextInputType.number,
                  decoration: InputDecoration(
                      fillColor: FrontendConfiguration.KtextFieldColor,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: const ButtonWidget(buttonText: "Start Capturing"),
                  onTap: () {
                    Get.to(const SummaryView());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text(
              "I don’t have to code",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: FrontendConfiguration.KblackColor,
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
