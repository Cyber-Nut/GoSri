import 'package:flutter/material.dart';
import 'package:gosri/authentication_screens/signup_screen.dart';
import 'package:gosri/components/colors.dart';

import '../components/custom_button.dart';

class ChooseRoleScreen extends StatefulWidget {
  const ChooseRoleScreen({super.key});

  @override
  State<ChooseRoleScreen> createState() => _ChooseRoleScreenState();
}

class _ChooseRoleScreenState extends State<ChooseRoleScreen> {
  String selected = 'Passenger';
  Color passengerColor = AppColors.primary;
  Color riderColor = Colors.white;

  void riderPressHandler() {
    setState(() {
      selected = 'Rider';
      riderColor = AppColors.primary;
      passengerColor = Colors.white;
    });
  }

  void passengerPressHandler() {
    setState(() {
      selected = 'Passenger';
      riderColor = Colors.white;
      passengerColor = AppColors.primary;
    });
  }

  void onDoneHandler() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignupScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
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

            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Text(
                    'Choose the role',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.001,
                  ),
                  Text(
                    'Ride Anywhere, Anytime!',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      letterSpacing: MediaQuery.of(context).size.width * 0.005,
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),

                  //Rider/Passenger Choose Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: riderPressHandler,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                              color: riderColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              border: Border.all(color: AppColors.primary)),
                          child: Center(
                            child: Text(
                              'Rider',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.035),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      GestureDetector(
                        onTap: passengerPressHandler,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                              color: passengerColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3)),
                              border: Border.all(color: AppColors.primary)),
                          child: Center(
                            child: Text(
                              'Passenger',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.035),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: CustomButton(
                      title: 'Done',
                      onPressed: onDoneHandler,
                      borderColor: AppColors.primary,
                      backgroundColor: AppColors.primary,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
