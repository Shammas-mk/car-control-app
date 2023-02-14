import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesla_control_app/constanins.dart';

class TempBtn extends StatelessWidget {
  const TempBtn({
    super.key,
    required this.svgSrc,
    required this.title,
    this.isActive = false,
    required this.press,
    this.ActiveColor = primaryColor,
  });
  final String svgSrc, title;
  final bool isActive;
  final VoidCallback press;
  final Color ActiveColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOutBack,
            height: isActive ? 76 : 50,
            width: isActive ? 76 : 50,
            child: SvgPicture.asset(
              svgSrc,
              color: isActive ? ActiveColor : Colors.white38,
            ),
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 200),
            style: TextStyle(
              color: isActive ? ActiveColor : Colors.white38,
              fontSize: 16,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                color: isActive ? ActiveColor : Colors.white38,
                fontSize: 16,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
