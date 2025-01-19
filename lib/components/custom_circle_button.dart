import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final Function() onPressed;
  final String imagePath;

  const CustomCircleButton({
    super.key,
    required this.onPressed,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Button clicked');
        onPressed(); // Calls the passed callback function
      },
      borderRadius:
          BorderRadius.circular(50), // Ensures ripple effect stays circular
      child: ClipOval(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white, // Set the background color to white
          ),
          width: MediaQuery.of(context).size.height *
              0.07, // Diameter of the button
          height: MediaQuery.of(context).size.height * 0.07,
          child: Image.asset(
            imagePath, // Path to your logo (e.g., Google logo)
            fit: BoxFit.contain,
            height: 30,
          ),
        ),
      ),
    );
  }
}
