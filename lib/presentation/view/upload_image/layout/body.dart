import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:volta/presentation/elements/button_widget.dart';
import 'package:volta/presentation/elements/card_widget.dart';
import 'package:volta/presentation/view/summary_print/summary_print_view.dart';
import '../../../../configuration/frontend.dart';

class UploadImageBody extends StatefulWidget {
  const UploadImageBody({Key? key}) : super(key: key);

  @override
  State<UploadImageBody> createState() => _UploadImageBodyState();
}

class _UploadImageBodyState extends State<UploadImageBody> {
 late File imageFile;

  // final ImagePicker _picker = ImagePicker();
 _getFromGallery() async {
   PickedFile? pickedFile = await ImagePicker().getImage(
     source: ImageSource.gallery,
     maxWidth: 1800,
     maxHeight: 1800,
   );
   if (pickedFile != null) {
     setState(() {
       imageFile = File(pickedFile.path);
     });
   }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontendConfiguration.KWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "VOLTA",
                      style: TextStyle(
                        color: FrontendConfiguration.KblackColor,
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  "Required",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Take take all required photos listed",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: const CardWidget(
                          image:"assets/images/carfront.png",
                          label: "Left Front Corner"),
                      onTap: () {
                        _getFromGallery();
                      },
                    ),
                    InkWell(
                      child:const CardWidget(
                          image:"assets/images/carfront.png",
                          label: "Left Rear Corner"),
                      onTap: () {
                      },
                    ),
                    InkWell(
                      child: const CardWidget(
                          image: "assets/images/rightfront.png",
                          label: "Right Front Corner"),
                      onTap: () {
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      child: const CardWidget(
                          image: "assets/images/carfront.png",
                          label: "Right Rear Corner"),
                      onTap: () {
                      },
                    ),
                    InkWell(
                      child: const CardWidget(
                          image: "assets/images/vin.png", label: "VIN"),
                      onTap: () {
                      },
                    ),
                    InkWell(
                      child: const CardWidget(
                          image: "assets/images/Odometer.png",
                          label: "Odometer (Mileage)"),
                      onTap: () {
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CardWidget(
                        image: "assets/images/door.png",
                        label: "Driver Door Interior Panel"),
                    CardWidget(
                        image: "assets/images/Dashboard.png",
                        label: "Dashboard"),
                    CardWidget(
                        image: "assets/images/seats.png",
                        label: "Front Seats & Rear Seats")
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Extra Images",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 21,
                    letterSpacing:0.2
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Please take additional photos of all damages and "
                  "any other relevent items (Ex. tires, windshields etc)",
                  style: TextStyle(
                    color: FrontendConfiguration.KblackColor,
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    letterSpacing:0.2
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Container(
                      height: 108,
                      width: 120,
                      decoration: BoxDecoration(
                          color: FrontendConfiguration.KtextFieldColor,
                          borderRadius: BorderRadius.circular(6)),
                      child: InkWell(
                        child: Center(
                            child: Image.asset(
                          "assets/images/camericon.png",
                          height: 37,
                          width: 37,
                        )),
                        onTap: () {
                          _getFromGallery();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Add Photos",
                      style: TextStyle(
                          color: FrontendConfiguration.KblackColor,
                          fontFamily: "Poppins",
                          fontSize: 14,
                          letterSpacing:0.2,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: const ButtonWidget(buttonText: "Continue"),
                  onTap: () {
                    Get.to(const PrintView());
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
