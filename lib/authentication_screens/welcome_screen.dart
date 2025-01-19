import 'package:flutter/material.dart';
import 'package:gosri/authentication_screens/choose_role_screen.dart';
import 'package:gosri/components/colors.dart';
import 'package:gosri/components/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void signUpHandler() {
    print('signuppressed');
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ChooseRoleScreen()));
  }

  void logInHandler() {
    print('login pressed');
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ChooseRoleScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      ),
                  child: Image.asset(
                    'assets/images/welcome.png',
                    fit: BoxFit.contain,
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Welcome',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.03,
                                fontWeight: FontWeight.w500)),
                        Text(
                          'Ride Anywhere, Anytime!',
                          style: TextStyle(color: AppColors.surface),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: CustomButton(
                            title: 'Sign Up',
                            onPressed: signUpHandler,
                            borderColor: AppColors.primary,
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: CustomButton(
                            title: 'Log in',
                            onPressed: signUpHandler,
                            borderColor: AppColors.primary,
                            backgroundColor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
