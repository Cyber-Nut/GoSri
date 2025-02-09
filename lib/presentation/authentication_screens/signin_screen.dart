import 'package:flutter/material.dart';
import 'package:gosri/presentation/content_screens/tabs/navigation_menu.dart';
import 'package:gosri/widgets/colors.dart';
import 'package:gosri/widgets/custom_button.dart';
import 'package:gosri/widgets/input_field.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import '../../routes/app_routes.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final SingleValueDropDownController genderController =
      SingleValueDropDownController();
  final TextEditingController passwordController = TextEditingController();

  bool _isObscured = true;

  void onSignInHandler() {
    print('Sign in button pressed');
    Navigator.pushNamed(context, AppRoutes.navigationMenu);
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
              'Sign in with your email or phone number',
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
                  //Email/Phone input container
                  Container(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: MediaQuery.of(context).size.width * 0.9,

                    // decoration: BoxDecoration(color: Colors.blue),
                    child: InputField(
                      hintText: 'Enter your email or phone number',
                      controller: emailController,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.055,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.surface),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.055,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border:
                              Border.all(color: AppColors.surface, width: 0.1),
                        ),
                        child: TextFormField(
                            obscureText: _isObscured,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  color: AppColors.surface),
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscured
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppColors.surface,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscured = !_isObscured;
                                  });
                                },
                              ),
                            ))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 9,
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, AppRoutes.setNewPasswordScreen),
                        child: Text(
                          'Forgot password?',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: AppColors.secondary,
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.017),
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
                child: Expanded(
                  child: CustomButton(
                      title: "Sign In",
                      onPressed: onSignInHandler,
                      backgroundColor: AppColors.primary,
                      borderColor: AppColors.primary),
                )),

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
                  "Do'nt have an account?",
                  style: TextStyle(
                    color: AppColors.error,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.signUpScreen),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: MediaQuery.of(context).size.height * 0.02),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
