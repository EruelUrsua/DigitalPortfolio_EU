import 'package:digital_portfolio_ursua/constants/colors.dart';
import 'package:digital_portfolio_ursua/styles/style.dart';
import 'package:digital_portfolio_ursua/widgets/header_desktop.dart';
import 'package:digital_portfolio_ursua/widgets/header_mobile.dart';
import 'package:digital_portfolio_ursua/widgets/site_logo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // MAIN
         // HeaderDesktop(),
        HeaderMobile(
          onLogotap: () {},
          onMenutap: () {},
        ),


          //Skills
          Container(
            height: 500,
            width: double.maxFinite,
             color: Colors.blueGrey,
          ),
          //Projects
           Container(
            height: 500,
            width: double.maxFinite,
          ),
          // Contact
           Container(
            height: 500,
            width: double.maxFinite,
             color: Colors.blueGrey,
          ),
          // Footer
           Container(
            height: 500,
            width: double.maxFinite,
          )

        ],

      ),
    );
  }
}