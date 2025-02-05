import 'package:flutter/material.dart';
import 'package:gosri/widgets/colors.dart';
import 'package:gosri/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';

import '../../routes/app_routes.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController pinInputController = TextEditingController();

  void onVerifyHandler() {
    print('verify button pressed');
    Navigator.pushNamed(context, AppRoutes.setPasswordScreen);
  }

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 40,
        color: Color.fromRGBO(255, 255, 255, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.surface, width: 1),
      borderRadius: BorderRadius.circular(3),
    ),
  );

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
              'Phone Verification',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                  color: AppColors.error),
            ),

            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.001,
            // ),

            Text(
              'Enter your OTP code',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                  color: AppColors.surface),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),

            Pinput(
              length: 4,
              controller: pinInputController,
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive code?",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: AppColors.error),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Text(
                  "Resend OTP",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      color: AppColors.primary),
                )
              ],
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),

            //Verify button
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.85,
                child: CustomButton(
                    title: "Verify",
                    onPressed: onVerifyHandler,
                    backgroundColor: AppColors.primary,
                    borderColor: AppColors.primary)),
          ],
        ),
      ),
    ));
  }
}
