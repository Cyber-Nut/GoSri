import 'package:flutter/material.dart';
import 'package:gosri/presentation/content_screens/history/history_card.dart';
import 'package:gosri/widgets/colors.dart';

class RideHistoryScreen extends StatefulWidget {
  const RideHistoryScreen({super.key});

  @override
  State<RideHistoryScreen> createState() => _RideHistoryScreenState();
}

class _RideHistoryScreenState extends State<RideHistoryScreen> {
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

            Align(
              alignment: Alignment(-1, 0),
              child: Text(
                'Ride History',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w400,
                    color: AppColors.error),
              ),
            ),
            Align(
              alignment: Alignment(-1, 0),
              child: Text(
                'Showing all your ride history',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.018,
                    fontWeight: FontWeight.w400,
                    color: AppColors.surface),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            Align(
              alignment: Alignment(-1, 0),
              child: Text(
                'Active Ride',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                    fontWeight: FontWeight.w400,
                    color: AppColors.error),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Align(
              alignment: Alignment(-1, 0),
              child: HistoryCard(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            Align(
              alignment: Alignment(-1, 0),
              child: Text(
                'Past Ride',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                    fontWeight: FontWeight.w400,
                    color: AppColors.error),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Align(
              alignment: Alignment(-1, 0),
              child: HistoryCard(),
            )
          ],
        ),
      ),
    ));
  }
}
