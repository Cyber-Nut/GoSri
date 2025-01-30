import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../routes/app_routes.dart';
import '../../widgets/colors.dart';

class BookYourRideScreen extends StatefulWidget {
  const BookYourRideScreen({super.key});

  @override
  State<BookYourRideScreen> createState() => _BookYourRideScreenState();
}

class _BookYourRideScreenState extends State<BookYourRideScreen> {
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
                  child: SvgPicture.asset(
                    'assets/images/intro3.svg',
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
                        Text('Book Your Ride Now',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.03,
                                fontWeight: FontWeight.w500,
                                color: AppColors.error)),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Effortlessly connect with buyers and get the best deals with our innovative platform. Your property, your success, simplified!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.surface, height: 1.2),
                              )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(
                              context, AppRoutes.welcomeScreen),
                          child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              width: MediaQuery.of(context).size.height * 0.075,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.primary,
                              ),
                              child: Center(
                                  child: Text(
                                'Go',
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.024,
                                    color: AppColors.error,
                                    fontWeight: FontWeight.w500),
                              ))),
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
