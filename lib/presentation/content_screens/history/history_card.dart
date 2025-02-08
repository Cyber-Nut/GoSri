import 'package:flutter/material.dart';
import 'package:gosri/widgets/colors.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromARGB(255, 208, 205, 205),
            width: 1,
          )),
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/pinPickUp.png'),
                  Image.asset('assets/images/line.png'),
                  Image.asset('assets/images/pinDrop.png'),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Pickup loctation name
                  Text(
                    'Srinagar, Uttarakhand',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        color: AppColors.error),
                  ),
                  Text(
                    'Pick up location',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        color: AppColors.error),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),

                  Text(
                    'Chungi, Uttarakhand',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        color: AppColors.error),
                  ),
                  Text(
                    'Drop location',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        color: AppColors.error),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.12,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Payment',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        color: AppColors.error),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.15,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 187, 232, 135),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: Text(
                      '200',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 34, 100, 36),
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    'Distance',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        color: AppColors.error),
                  ),
                  Text(
                    '12km',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        color: AppColors.error,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
