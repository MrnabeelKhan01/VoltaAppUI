import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:volta/presentation/elements/button_widget.dart';
import 'package:volta/presentation/view/summary_view/layout/textfield_widget.dart';
import 'package:volta/presentation/view/upload_image/upload_image_view.dart';
import '../../../../configuration/frontend.dart';

class SummaryBody extends StatelessWidget {
   SummaryBody({Key? key}) : super(key: key);
final TextEditingController _name=TextEditingController();
   final TextEditingController _address=TextEditingController();
   final TextEditingController _city=TextEditingController();
   final TextEditingController _state=TextEditingController();
   final TextEditingController _zipCode=TextEditingController();
   final TextEditingController _phone=TextEditingController();
   final TextEditingController _vehicleMake=TextEditingController();
   final TextEditingController _model=TextEditingController();
   final TextEditingController _year=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:FrontendConfiguration.KWhiteColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                const SizedBox(height:20,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo.png",height:30,width:30,),
                    SizedBox(width:3,),
                    Text("VOLTA",style: TextStyle(
                      color: FrontendConfiguration.KblackColor,
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
               const SizedBox(height: 18,),
                Text("Car Information",style: TextStyle(
                  color: FrontendConfiguration.KblackColor,
                  fontFamily: "Poppins",
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),),
                const SizedBox(height: 8,),
                Text("Fill out the form to provide us the necessary\n"
                    "information",style: TextStyle(
                  color: FrontendConfiguration.KblackColor,
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),),
                const SizedBox(height: 18,),
                TextFieldWidget(hintText: "Name", labelText:"Owner Name", controller:_name, inputType:TextInputType.text ,),
                const SizedBox(height: 18,),
                 TextFieldWidget(hintText: "Your address", labelText:"Address", controller: _address, inputType:TextInputType.text,),
                const SizedBox(height: 18,),
                 TextFieldWidget(hintText: "City", labelText:"City",controller:_city, inputType:TextInputType.text,),
                const SizedBox(height: 18,),
                 TextFieldWidget(hintText: "State", labelText:"State",controller:_state,inputType:TextInputType.text,),
                const SizedBox(height: 18,),
                 TextFieldWidget(hintText: "Zip Code", labelText:"Zip Code",controller:_zipCode,inputType:TextInputType.number),
                const SizedBox(height: 18,),
                 TextFieldWidget(hintText: "Phone", labelText:"Phone",controller:_phone,inputType:TextInputType.phone),
                const SizedBox(height: 18,),
                 TextFieldWidget(hintText: "Make", labelText:"Vehicle Make",controller:_vehicleMake,inputType:TextInputType.number,),
                const SizedBox(height: 18,),
                 TextFieldWidget(hintText: "Model", labelText:"Vehicle Model",controller:_model,inputType:TextInputType.number),
                const SizedBox(height: 18,),
                 TextFieldWidget(hintText: "Year", labelText:"Vehicle year",controller:_year,inputType:TextInputType.number,),
                const SizedBox(height: 30,),
                 InkWell(child: const ButtonWidget(buttonText: "Start Capturing"),onTap:(){
                   Get.to(const UploadImageView());
                 },),
                const SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
