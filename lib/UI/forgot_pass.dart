import 'package:courses_app/UI/reset_pass.dart';
import 'package:courses_app/UI/widgets/btn.dart';
import 'package:courses_app/UI/widgets/txt_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [

              //**Adding image */
              Container(
                height: Get.size.height *.3,
                width: Get.size.height *.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/forgotpass2.png"))),
              ),

              //**Adding space */
              SizedBox(
                height: 18,
              ),

              //** Text */
              Text("Forgot Password",
                  style: Theme.of(context).textTheme.headline5!.copyWith()),

              //** Adding space */
              SizedBox(height: 30),

              //**Our custom text field */
              TxtField(
                  inputType: TextInputType.emailAddress,
                  hintText: "Enter your Email",
                  obscureText: false),


              //** Adding space */
              SizedBox(height:16),
              //*custom button */
              Btn(
                  text: 'Reset Password',
                  onPressed: (){
                    Get.to(() => ResetPass());
                  }),
              //space
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
