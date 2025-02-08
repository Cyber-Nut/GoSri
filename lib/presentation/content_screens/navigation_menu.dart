import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gosri/presentation/content_screens/history/ride_history_screen.dart';
import 'package:gosri/presentation/content_screens/home_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: MediaQuery.of(context).size.height * 0.08,
            elevation: 5,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: [
              const NavigationDestination(
                  icon: Icon(Icons.home), label: 'Home'),
              const NavigationDestination(
                  icon: Icon(Icons.favorite_outline), label: 'Favorite'),
              const NavigationDestination(
                  icon: Icon(Icons.search), label: 'Search'),
              const NavigationDestination(
                  icon: Icon(Icons.history_outlined), label: 'History'),
              const NavigationDestination(
                  icon: Icon(Icons.person), label: 'Profile'),
            ]),
      ),
      body: Obx(() => controller.Screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  //this will allow us to redraw only those things which are under the getx

  final Rx<int> selectedIndex = 0.obs; //observed

  final Screens = [
    //Define the body of the selected index here
    HomeScreen(),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.red,
    ),
    RideHistoryScreen(),
    Container(
      color: Colors.pink,
    )
  ];
}
