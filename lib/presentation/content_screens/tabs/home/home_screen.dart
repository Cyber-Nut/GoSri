import 'package:flutter/material.dart';
import 'package:gosri/widgets/history_card.dart';
import 'package:gosri/routes/app_routes.dart';
import 'package:gosri/widgets/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 30,
              color: AppColors.background,
            ),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.notificationScreen);
              // Handle notification icon press
            },
          ),
        ],
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: AppColors.background,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Back Button
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
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
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),

                    //Profile picture
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                          color: AppColors.error,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1.5, color: Colors.green)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),

                    //Username
                    Text(
                      'Abhishek Kumar',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.024,
                          fontWeight: FontWeight.w600,
                          color: AppColors.error),
                    ),

                    //Email address
                    Text(
                      'abhishekKumar@gmail.com',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.017,
                          fontWeight: FontWeight.w600,
                          color: AppColors.error),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text(
                'History',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.017),
              ),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            Divider(
              color: AppColors.surface,
            ),
            ListTile(
              leading: Icon(Icons.warning_amber_outlined),
              title: Text(
                'Complaint',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.017,
                ),
              ),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            Divider(
              color: AppColors.surface,
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text(
                'About Us',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.017),
              ),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            Divider(
              color: AppColors.surface,
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text(
                'Settings',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.017),
              ),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            Divider(
              color: AppColors.surface,
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text(
                'Help and Support',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.017),
              ),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            Divider(
              color: AppColors.surface,
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text(
                'Logout',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.017),
              ),
              onTap: () {
                // Handle item 1 tap
                Navigator.pop(context);
              },
            ),
            Divider(
              color: AppColors.surface,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 0, bottom: 20, right: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'GoSri to your destination!',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.027,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.background,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.height * 0.05,
                          child: Icon(Icons.search_outlined),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                hintText: 'Search Destination',
                                hintStyle: TextStyle(color: AppColors.surface),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                        'Book your Ride',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.height * 0.12,
                            decoration: BoxDecoration(
                                color: AppColors.background,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              'assets/images/bike.png',
                              fit: BoxFit.contain,
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.height * 0.12,
                            decoration: BoxDecoration(
                                color: AppColors.background,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Image.asset(
                                'assets/images/car.png',
                                fit: BoxFit.contain,
                              ),
                            )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.height * 0.12,
                            decoration: BoxDecoration(
                                color: AppColors.background,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Image.asset(
                                'assets/images/lease.png',
                                scale: 1,
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 0.88,
            decoration: BoxDecoration(color: AppColors.surface),
            child: Center(
              child: Text('ads section'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Rides History',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.03),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.018,
                      color: Colors.blue),
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 223, 245),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('10 May, 2025'), Text('N250')],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          HistoryCard()
        ],
      )),
    ));
  }
}
