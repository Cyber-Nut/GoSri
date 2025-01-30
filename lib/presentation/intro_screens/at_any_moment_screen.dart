import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../routes/app_routes.dart';
import '../../widgets/colors.dart';

class AtAnyMomentScreen extends StatefulWidget {
  const AtAnyMomentScreen({super.key});

  @override
  State<AtAnyMomentScreen> createState() => _AtAnyMomentScreenState();
}

class _AtAnyMomentScreenState extends State<AtAnyMomentScreen> {
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
                    'assets/images/intro2.svg',
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
                        Text('At any moment',
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
                                'Discover a smarter, faster way to connect buyers and sellers. With Listenoryx, your property goals are just a step away!',
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
                              context, AppRoutes.bookYourRideScreen),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.075,
                            width: MediaQuery.of(context).size.height * 0.075,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.primary,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: AppColors.error,
                            ),
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
