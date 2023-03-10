// ignore_for_file: prefer_const_constructors, prefer_adjacent_string_concatenation, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:tesla_control_app/constanins.dart';
import 'package:tesla_control_app/model/TyrePsi.dart';

class TyrePsiCard extends StatelessWidget {
  const TyrePsiCard({
    super.key,
    required this.isBottonTyre,
    required this.tyrePsi,
  });

  final bool isBottonTyre;
  final TyrePsi tyrePsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: tyrePsi.isLowPressure
              ? redColor.withOpacity(0.1)
              : Colors.white10,
          border: Border.all(
            color: tyrePsi.isLowPressure ? redColor : primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20.0)),
      child: isBottonTyre
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                psiText(context, psi: tyrePsi.psi.toString()),
                const SizedBox(height: defaultPadding),
                Text(
                  "${tyrePsi.temp}" + "\u2103",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                lowPressureText(context),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                psiText(context, psi: tyrePsi.psi.toString()),
                const SizedBox(height: defaultPadding),
                Text(
                  "${tyrePsi.temp}" + "\u2103",
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                lowPressureText(context),
              ],
            ),
    );
  }

  Column lowPressureText(BuildContext context, {String}) {
    return tyrePsi.isLowPressure
        ? Column(
            children: [
              Text(
                "Low".toUpperCase(),
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                "pressure".toUpperCase(),
                style: TextStyle(fontSize: 20),
              ),
            ],
          )
        : Column();
  }

  Text psiText(BuildContext context, {required String psi}) {
    return Text.rich(
      TextSpan(
          text: psi,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
          children: const [
            TextSpan(
              text: "psi",
              style: TextStyle(fontSize: 24),
            ),
          ]),
    );
  }
}
