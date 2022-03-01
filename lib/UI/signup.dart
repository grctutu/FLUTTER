import 'package:courses_app/UI/view_courses.dart';
import 'package:courses_app/UI/widgets/btn.dart';
import 'package:courses_app/ui/widgets/txt_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String _CurrentSelectedvalue;
  @override
  void initState() {
    _CurrentSelectedvalue = "Mentee";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var _selectType =[
      "Mentee",
      "Mentor/Teacher"
    ];
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
                        image: AssetImage("images/signup2.png"))),
              ),

              //**Adding space */
              SizedBox(
                height: 18,
              ),

              //** Text */
              Text("Welcome to Pwani Teknowgalz Courses! \n\nCreate Account",
                  style: Theme.of(context)
                      .textTheme
                      .headline5),

              //** Adding space */
              SizedBox(height: 30),

              //Dropdown formfield
              FormField<String>(builder:
              (FormFieldState<String> state){
                return InputDecorator(
              decoration: InputDecoration(
                errorStyle:
              TextStyle(color: Colors.redAccent, fontSize: 16),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Mentor or Mentee?',
                contentPadding: const EdgeInsets.only(
                    left: 14, bottom: 16, top: 16),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(15)
                ),
                enabledBorder: UnderlineInputBorder( borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15))),
                     child: DropdownButtonHideUnderline(child: DropdownButton<String>(
                       value: _CurrentSelectedvalue,
                       isDense: true,
                       onChanged: (newValue) {
                       setState(() {
                         _CurrentSelectedvalue = newValue!;
                         state.didChange(newValue);
                       });
                       },
                       items: _selectType.map((String value) {
                         return DropdownMenuItem<String>(value: value, child: Text(value));
                    }).toList(),
                    ),
                  ),
                );
              }),


              //** Adding space */
              SizedBox(height: 16),

              //**Our custom text field */
              TxtField(
                  inputType: TextInputType.text,
                  hintText: "Full names",
                  obscureText: false),

              //** Adding space */
              SizedBox(height: 16),

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
              SizedBox(height: 20),

              //*custom button */
              Btn(
                  text: 'Register',
                  onPressed: (){
                    Get.to(() => ViewCourses());
                  }),
              //space
              SizedBox(height: 25),
              InkWell(
                onTap: () {
                  Get.to(() => Login());
                },
                child: RichText(text: TextSpan(
                    text: "Already have an account?", style: TextStyle(color: Colors.black87),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Login",
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
    ;
  }
}
