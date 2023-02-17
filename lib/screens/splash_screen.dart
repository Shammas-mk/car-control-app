import 'package:flutter/material.dart';
import 'package:tesla_control_app/constanins.dart';
import 'package:tesla_control_app/controllers/home_controller.dart';
import 'package:tesla_control_app/screens/connecting_screen.dart';
import 'package:tesla_control_app/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = HomeController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                "Control Your Car",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              width: double.infinity,
              child: Image.asset(
                'assets/images/car1.png',
                width: 220,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    maximumSize: const Size(double.infinity, 50)),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  controller.updateConnectedDeviceValue();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ConnectScreen(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
