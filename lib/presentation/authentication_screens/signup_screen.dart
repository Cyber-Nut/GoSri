import 'package:flutter/material.dart';
import 'package:gosri/routes/app_routes.dart';
import 'package:gosri/widgets/colors.dart';
import 'package:gosri/widgets/custom_button.dart';
import 'package:gosri/widgets/input_field.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

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

  bool _isChecked = false;

  void onSignUpHandler() {
    print('Sign Up button pressed');
    Navigator.pushNamed(context, AppRoutes.otpScreen);
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
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            //Sign Up button
            Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.85,
                child: CustomButton(
                    title: "Sign Up",
                    onPressed: onSignUpHandler,
                    backgroundColor: AppColors.primary,
                    borderColor: AppColors.primary)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundCheckBox(
                  onTap: (selected) => print('Check Box Tapped'),
                  isChecked: _isChecked,
                  size: MediaQuery.of(context).size.height * 0.025,
                  checkedColor: AppColors.primary,
                  checkedWidget: Icon(
                    Icons.check,
                    size: MediaQuery.of(context).size.height * 0.02,
                    color: AppColors.error,
                  ),
                  animationDuration: Duration(milliseconds: 0),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    _isChecked = !_isChecked;
                  }),
                  child: Row(
                    children: [
                      Text(
                        'By signing up, you agree to the',
                        style: TextStyle(
                            color: AppColors.error,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.015),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.005,
                      ),
                      Text(
                        'Terms of Service',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.015),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.005,
                      ),
                      Text(
                        '&',
                        style: TextStyle(
                            color: AppColors.error,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.015),
                      ),
                    ],
                  ),
                )
              ],
            ),

            Container(
              width: MediaQuery.of(context).size.width * 9,
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  'Privacy policy',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.height * 0.015),
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              'Or',
              style: TextStyle(color: AppColors.error),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Google Button
                GestureDetector(
                  onTap: () => print('Google Button Pressed'),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: AppColors.surface, width: 1)),
                    child: Center(
                      child: Image.asset(
                        'assets/images/googleLogo.png',
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),

                //Facebook Button
                GestureDetector(
                  onTap: () => print('Facebook Button Pressed'),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: AppColors.surface, width: 1)),
                    child: Center(
                      child: Image.asset(
                        'assets/images/facebookIcon.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: AppColors.error,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.signInScreen),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: MediaQuery.of(context).size.height * 0.02),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
