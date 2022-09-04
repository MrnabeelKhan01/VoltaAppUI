import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:volta/presentation/view/contact/contact_view.dart';
import 'package:volta/presentation/view/splashscreen/splashscreen_view.dart';
import 'package:volta/presentation/view/summary_print/summary_print_view.dart';
import 'package:volta/presentation/view/summary_view/summary_view.dart';
import 'package:volta/presentation/view/upload_image/upload_image_view.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner:false,
    home:SplashScreenView(),
  ));
}
