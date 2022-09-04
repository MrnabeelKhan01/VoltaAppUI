import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:volta/presentation/elements/button_widget.dart';
import 'package:volta/presentation/view/contact/contact_view.dart';
import 'package:volta/presentation/view/summary_print/layout/text_widget.dart';

import '../../../../configuration/frontend.dart';
import '../../summary_view/summary_view.dart';

class PrintBody extends StatelessWidget {
  const PrintBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:true,
      appBar:AppBar(
        backgroundColor:Colors.transparent,
         elevation:0,
         centerTitle:true,
          title: Transform.translate(
            offset:const Offset(50, 0),
            child: Row(
        children: [
        Image.asset(
        "assets/images/logo.png",
        height: 30,
        width: 30,
      ),
            Text(
              "VOLTA",
              style: TextStyle(
                color: FrontendConfiguration.KblackColor,
                fontFamily: "Poppins",
                letterSpacing:0.2,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),]),
          ),
        actions:[
          IconButton(
            icon:const Icon(Icons.mode_edit_outlined,
            color: Colors.blue,
            size:20,
          ),
          onPressed:(){
              Get.to(const SummaryView());
          },),
          const Padding(
            padding: EdgeInsets.only(top:20,right:18),
            child: Text("Edit",
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                )),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 18,
                ),
                Text(
                  "Capture Summary",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    letterSpacing:0.2,
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text("Please review details below",
                    style: TextStyle(
                      color: FrontendConfiguration.KblackColor,
                      fontFamily: "Poppins",
                      letterSpacing:0.2,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    )),
              const SizedBox(height:18,),
                const DetailWidget(label: "Name", detail: "Michel Jons"),
                const SizedBox(height:18,),
                const DetailWidget(
                    label: "Address",
                    detail: "Boyle Viaduct, 71365 Keeling Well "),
                const SizedBox(height:18,),
                const DetailWidget(label: "City", detail: "CIty Name"),
                const SizedBox(height:18,),
                const DetailWidget(label: "State", detail: "State Name"),
                const SizedBox(height:18,),
                const DetailWidget(label: "Zip Code", detail: "2600"),
                const SizedBox(height:18,),
                const DetailWidget(label: "Vehicle Make", detail: "Honda"),
                const SizedBox(height:18,),
                const DetailWidget(label: "Vehicle Model", detail: "2019"),
                const SizedBox(height:18,),
                const DetailWidget(label: "Vehicle year", detail: "2019"),
                const SizedBox(height:18,),
                Text(
                  "Captured Images",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    letterSpacing:0.2,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height:8,),
                Text(
                  "Car (6)",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    letterSpacing:0.2,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height:8,),
                Text(
                  "Extra (6)",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    fontSize: 14,
                    letterSpacing:0.2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height:8,),
                Text(
                  "Any Special Note",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    letterSpacing:0.2,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height:8,),
                SizedBox(
                  height:85,
                  width:MediaQuery.of(context).size.width,
                  child: TextFormField(
                    maxLines:5,
                    decoration: InputDecoration(
                      contentPadding:const EdgeInsets.all(10),
                        hintText: "Your note...",
                        hintStyle: TextStyle(
                            color: FrontendConfiguration.KhintColor,
                            fontFamily: "Poppins",
                            letterSpacing:0.2,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        fillColor: FrontendConfiguration.KtextFieldColor,
                        filled: true,
                      enabledBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(6),borderSide:BorderSide.none),
                      focusedBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(6),borderSide:BorderSide.none)
                    ),
                  ),
                ),
                const SizedBox(height:20,),
                InkWell(child: const ButtonWidget(buttonText: "Submit"),onTap:(){
                  Get.to(const ContactView());

                },),
                const SizedBox(height:10,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
