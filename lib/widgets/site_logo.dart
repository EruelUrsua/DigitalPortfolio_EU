import 'package:digital_portfolio_ursua/constants/colors.dart';
import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
                onTap: onTap,
                child: const Text(
                  "Eruel U.", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,
                   decoration: TextDecoration.underline,
                    color: CustomColor.yellowSecondary),),
              );
  }
}