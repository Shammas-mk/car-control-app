import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tesla_control_app/constanins.dart';
import 'package:tesla_control_app/controllers/home_controller.dart';
import 'package:tesla_control_app/screens/home_screen.dart';

class ConnectScreen extends StatelessWidget {
  const ConnectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = HomeController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Lottie.asset('assets/lottie/scanning.json',
                      width: 300, height: 300, fit: BoxFit.contain),
                ),
                Positioned(
                  left: 150,
                  top: 20,
                  child: FutureBuilder(
                    future: controller.updateConnectedDeviceValue(),
                    builder: (context, snapshot) => controller.connectedDevice
                        ? Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.of(context)
                                    .pushAndRemoveUntil(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()),
                                        (route) => false),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: primaryColor,
                                  ),
                                  child: const Icon(
                                    Icons.bluetooth,
                                    size: 25,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                              const SizedBox(height: defaultPadding * 0.3),
                              const Text("Tesla M-47"),
                            ],
                          )
                        : const SizedBox.shrink(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
