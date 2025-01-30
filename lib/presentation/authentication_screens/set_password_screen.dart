import 'package:flutter/material.dart';
import 'package:gosri/widgets/colors.dart';
import 'package:gosri/widgets/custom_button.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => __SetPasswordScreenState();
}

class __SetPasswordScreenState extends State<SetPasswordScreen> {
  final TextEditingController setpasswordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  bool _isObscured1 = true;
  bool _isObscured2 = true;

  void onRegisterHandler() {
    print('verify button pressed');
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
              child: SizedBox(
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
              'Set Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                  color: AppColors.error),
            ),

            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.001,
            // ),

            Text(
              'Set your password',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.023,
                  color: AppColors.surface),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),

            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.055,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.surface, width: 0.7),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: TextFormField(
                          obscureText: _isObscured1,
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
                                _isObscured1
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.surface,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscured1 = !_isObscured1;
                                });
                              },
                            ),
                          ))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.055,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.surface, width: 0.7),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: TextFormField(
                          obscureText: _isObscured2,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                                color: AppColors.surface),
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscured2
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.surface,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscured2 = !_isObscured2;
                                });
                              },
                            ),
                          ))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Text(
                        'Atleast 1 number or a special character',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                          color: AppColors.surface,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),

            //Register button
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Expanded(
                  child: CustomButton(
                      title: "Register",
                      onPressed: onRegisterHandler,
                      backgroundColor: AppColors.primary,
                      borderColor: AppColors.primary),
                )),
          ],
        ),
      ),
    ));
  }
}
