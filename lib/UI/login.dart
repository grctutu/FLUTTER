
import 'package:courses_app/UI/forgot_pass.dart';
import 'package:courses_app/UI/signup.dart';
import 'package:courses_app/UI/view_courses.dart';
import 'package:flutter/material.dart';
import 'package:courses_app/ui/widgets/btn.dart';
import 'package:courses_app/ui/widgets/txt_field.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                          image: AssetImage("images/login2.png"))),
                ),

                //**Adding space */
                SizedBox(
                  height: 18,
                ),

                //** Text */
                Text("Login",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold, letterSpacing: 1.2)),

              //** Adding space */
                SizedBox(height: 30),

                //**Our custom text field */
                TxtField(
                    inputType: TextInputType.emailAddress,
                    hintText: "Email",
                    obscureText: false),

                //** Adding space */
                SizedBox(height: 16),

                //**Our custom text field */
                TxtField(
                    inputType: TextInputType.text,
                    hintText: "Password",
                    obscureText: true),

                //** Adding space */
                SizedBox(height: 10),

                //**Row with button at the end */
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){
                          Get.to(() => ForgotPass());
                        },
                        child: Text(
                          "Forgot Password?",
                          style:
                          TextStyle(color: Color.fromRGBO(247, 153, 46, 1)),
                    )),

                  ],
                ),
              //** Adding space */
              SizedBox(height:10),
              //*custom button */
                         Btn(
                     text: 'Login',
                      onPressed: (){
                       Get.to(() => ViewCourses());
                      }),
                      //space
                SizedBox(height: 25),
                InkWell(
                  onTap: () {
                    Get.to(() => Signup());
                  },
                  child: RichText(text: TextSpan(
                    text: "Don\'t have an account?", style: TextStyle(color: Colors.black87),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Sign up",
                        style: TextStyle(color: Color.fromRGBO(230, 88, 62, 1))
                      )
                    ]
                  )),
                )
              ],
              ),
              ),
            ),
        );
  }
  }