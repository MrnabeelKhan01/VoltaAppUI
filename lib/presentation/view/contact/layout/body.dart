import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:volta/configuration/frontend.dart';
import 'package:volta/presentation/elements/button_widget.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: FrontendConfiguration.KblackColor,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(
            "Contact us",
            style: TextStyle(
              color: FrontendConfiguration.KblackColor,
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Didn’t receive a code?",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  height: 45,
                  width: 276,
                  decoration: BoxDecoration(
                      color: FrontendConfiguration.KblackColor,
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                    child: Text(
                      "Resend Code",
                      style: TextStyle(
                        color: FrontendConfiguration.KWhiteColor,
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.local_phone_outlined,
                      size: 20,
                      color: FrontendConfiguration.KhintColor,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("+1 956 420 9050",
                        style: TextStyle(
                          color: FrontendConfiguration.KblackColor,
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18.0),
        child: InkWell(
          child: const ButtonWidget(
            buttonText: 'Send Message',
          ),
          onTap: () {
            showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(18),
                        topLeft: Radius.circular(18))),
                context: context,
                builder: (context) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Text("Send Message",
                                style: TextStyle(
                                  color: FrontendConfiguration.KblackColor,
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                            const SizedBox(
                              height: 24,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Your Name",
                                  hintStyle: TextStyle(
                                      color: FrontendConfiguration.KhintColor,
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  fillColor:
                                      FrontendConfiguration.KtextFieldColor,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide.none)),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Your Email",
                                  hintStyle: TextStyle(
                                      color: FrontendConfiguration.KhintColor,
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  fillColor:
                                      FrontendConfiguration.KtextFieldColor,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide.none),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide.none)),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              height: 120,
                              child: TextFormField(
                                maxLines: 8,
                                decoration: InputDecoration(
                                    hintText: "Your Message...",
                                    hintStyle: TextStyle(
                                        color: FrontendConfiguration.KhintColor,
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                    fillColor:
                                        FrontendConfiguration.KtextFieldColor,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const ButtonWidget(buttonText: "Send"),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ));
          },
        ),
      ),
    );
  }
}
