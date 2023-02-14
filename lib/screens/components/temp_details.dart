import 'package:flutter/material.dart';
import 'package:tesla_control_app/constanins.dart';
import 'package:tesla_control_app/controllers/home_controller.dart';
import 'package:tesla_control_app/screens/components/temp_btn.dart';

class TempDetails extends StatelessWidget {
  const TempDetails({
    super.key,
    required HomeController controller,
  }) : _controller = controller;

  final HomeController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Row(
              children: [
                TempBtn(
                  isActive: _controller.isCoolSelected,
                  press: _controller.updateCoolSelectedTab,
                  svgSrc: 'assets/icons/coolShape.svg',
                  title: 'Cool',
                ),
                const SizedBox(width: defaultPadding),
                TempBtn(
                  isActive: !_controller.isCoolSelected,
                  press: _controller.updateCoolSelectedTab,
                  svgSrc: 'assets/icons/heatShape.svg',
                  ActiveColor: redColor,
                  title: 'Heat',
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  _controller.level++;
                  _controller.updateLevel();
                },
                icon: Icon(
                  Icons.arrow_drop_up,
                  size: 48,
                ),
              ),
              Text(
                "${_controller.level}" + "\u2103",
                style: TextStyle(fontSize: 80),
              ),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  _controller.level--;
                  _controller.updateLevel();
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 48,
                ),
              ),
            ],
          ),
          Spacer(),
          Text("Current Temperature".toUpperCase()),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Inside".toUpperCase(),
                  ),
                  _controller.updatedinsideLevel == null
                      ? Text("${_controller.level}" + "\u2103")
                      : Text("${_controller.updatedinsideLevel}" + "\u2103")
                ],
              ),
              const SizedBox(width: defaultPadding),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "outside".toUpperCase(),
                  ),
                  Text(
                    "${_controller.outside + _controller.level}" + "\u2103",
                    style: TextStyle(color: Colors.white54),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
