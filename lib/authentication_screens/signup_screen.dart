import 'package:flutter/material.dart';
import 'package:gosri/components/colors.dart';
import 'package:gosri/components/custom_button.dart';
import 'package:gosri/components/input_field.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final SingleValueDropDownController genderController =
      SingleValueDropDownController();

  void onSignUpHandler() {
    print('Sign Up button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            //Back Button
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Icon(
                      Icons.arrow_back_ios,
                      size: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            Text(
              'Sign up with your email or phone number',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                  color: AppColors.error),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.9,
              // decoration: BoxDecoration(
              //   color: Colors.red,
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Name
                  Container(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: MediaQuery.of(context).size.width * 0.9,
                    // decoration: BoxDecoration(color: Colors.blue),
                    child: InputField(
                      hintText: 'Name',
                      controller: nameController,
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  //Email
                  Container(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: MediaQuery.of(context).size.width * 0.9,
                    // decoration: BoxDecoration(color: Colors.blue),
                    child: InputField(
                      hintText: 'Email',
                      controller: emailController,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  //Phone Number
                  Container(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: MediaQuery.of(context).size.width * 0.9,
                    // decoration: BoxDecoration(color: Colors.blue),
                    child: InputField(
                      hintText: 'Phone Number',
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                      maxLength: 10,
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  //Gender Drop Down
                  Container(
                      height: MediaQuery.of(context).size.height * 0.055,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.surface,
                          ),
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: DropDownTextField(
                          controller: genderController,
                          clearOption: true,
                          dropDownItemCount: 3,
                          textFieldDecoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Gender',
                              hintStyle: TextStyle(
                                color: AppColors.surface,
                              )),
                          dropDownIconProperty:
                              IconProperty(color: AppColors.surface),
                          dropDownList: [
                            DropDownValueModel(name: 'Male', value: 'Male'),
                            DropDownValueModel(name: 'Female', value: 'Female'),
                            DropDownValueModel(
                                name: 'Prefer not to say',
                                value: 'Prefer not to say')
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            //Sign Up button
            Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Expanded(
                  child: CustomButton(
                      title: "Sign Up",
                      onPressed: onSignUpHandler,
                      backgroundColor: AppColors.primary,
                      borderColor: AppColors.primary),
                )),
          ],
        ),
      ),
    ));
  }
}
