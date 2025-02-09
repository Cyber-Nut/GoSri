import 'package:flutter/material.dart';
import 'package:gosri/widgets/colors.dart';
import 'package:gosri/widgets/notification_card.dart';

import '../../../../widgets/history_card.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
              alignment: Alignment(0, 0),
              child: Text(
                'Notification',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w400,
                    color: AppColors.error),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            Align(
              alignment: Alignment(-1, 0),
              child: Text(
                'Today',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                    fontWeight: FontWeight.w500,
                    color: AppColors.error),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Align(
              alignment: Alignment(-1, 0),
              child: NotificationCard(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Align(
              alignment: Alignment(-1, 0),
              child: NotificationCard(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            Align(
              alignment: Alignment(-1, 0),
              child: Text(
                'Yesterday',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                    fontWeight: FontWeight.w500,
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
