// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesla_control_app/constanins.dart';

class TeslaBottomNavBar extends StatelessWidget {
  const TeslaBottomNavBar({
    super.key,
    required this.selectedTab,
    required this.onTap,
  });

  final int selectedTab;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onTap,
        currentIndex: selectedTab,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: List.generate(
          navIconSrc.length,
          (index) => BottomNavigationBarItem(
            icon: SvgPicture.asset(
              navIconSrc[index],
              color: index == selectedTab ? primaryColor : Colors.white54,
            ),
            label: "",
          ),
        ));
  }
}

List<String> navIconSrc = [
  "assets/icons/Lock.svg",
  "assets/icons/Charge.svg",
  "assets/icons/Temp.svg",
  "assets/icons/Tyre.svg"
];
