import 'package:flutter/material.dart';
import 'package:gosri/widgets/colors.dart';
import 'package:gosri/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => __SetPasswordScreenState();
}

class __SetPasswordScreenState extends State<SetPasswordScreen> {
  final TextEditingController setpasswordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

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
                      border: Border.all(color: AppColors.surface),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    // decoration: BoxDecoration(color: Colors.blue),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            //Verify button
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
