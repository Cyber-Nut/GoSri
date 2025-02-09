import 'package:flutter/material.dart';
import 'package:gosri/widgets/colors.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFE2F5ED),
          borderRadius: BorderRadius.circular(5),
          border: null),
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment(-1, 0),
              child: Text(
                'Payment confirm',
                style: TextStyle(
                    color: AppColors.error,
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Ultrici es tincidunt eleifend vitae',
              style: TextStyle(
                color: const Color.fromARGB(153, 121, 120, 120),
                fontSize: MediaQuery.of(context).size.height * 0.015,
              ),
            ),
            Align(
              alignment: Alignment(-1, 0),
              child: Text(
                '15 min ago',
                style: TextStyle(
                  color: const Color.fromARGB(153, 121, 120, 120),
                  fontSize: MediaQuery.of(context).size.height * 0.015,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
