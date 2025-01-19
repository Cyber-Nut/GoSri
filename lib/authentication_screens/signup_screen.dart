import 'package:flutter/material.dart';
import 'package:gosri/components/input_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

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

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            Text(
              'Sign up with your email or phone number',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.035),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
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
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
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
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
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
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.9,
                    // decoration: BoxDecoration(color: Colors.blue),
                    child: InputField(
                      hintText: 'Phone Number',
                      keyboardType: TextInputType.number,
                      controller: phoneController,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(color: Colors.blue),
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
