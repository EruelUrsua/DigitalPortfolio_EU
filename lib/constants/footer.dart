import 'package:digital_portfolio_ursua/constants/colors.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                width: double.maxFinite,
                alignment: Alignment.center,
                child: const Text("Made by Eruel U.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: CustomColor.whiteSecondary,
                ),
                 ),
              );
  }
}