// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<Widget> Tyres(BoxConstraints constraints) {
  return [
    Positioned(
      left: constraints.maxWidth * 0.2,
      top: constraints.maxHeight * 0.22,
      child: SvgPicture.asset('assets/icons/FL_Tyre.svg'),
    ),
    Positioned(
      right: constraints.maxWidth * 0.2,
      top: constraints.maxHeight * 0.22,
      child: SvgPicture.asset('assets/icons/FL_Tyre.svg'),
    ),
    Positioned(
      left: constraints.maxWidth * 0.2,
      top: constraints.maxHeight * 0.63,
      child: SvgPicture.asset('assets/icons/FL_Tyre.svg'),
    ),
    Positioned(
      right: constraints.maxWidth * 0.2,
      top: constraints.maxHeight * 0.63,
      child: SvgPicture.asset('assets/icons/FL_Tyre.svg'),
    ),
  ];
}
