import 'package:digital_portfolio_ursua/constants/colors.dart';
import 'package:digital_portfolio_ursua/constants/size.dart';
import 'package:digital_portfolio_ursua/widgets/drawer_mobile.dart';
import 'package:digital_portfolio_ursua/widgets/header_desktop.dart';
import 'package:digital_portfolio_ursua/widgets/header_mobile.dart';
import 'package:digital_portfolio_ursua/widgets/main_desktop.dart';
import 'package:digital_portfolio_ursua/widgets/main_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey <ScaffoldState>();
  @override
  Widget build(BuildContext context) {
   final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth>=KMinDesktopWidth?null : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAIN
              if(constraints.maxWidth>=KMinDesktopWidth)
            const HeaderDesktop() else
            HeaderMobile(
              onLogotap: () {},
              onMenutap: () {
                scaffoldKey.currentState?.openEndDrawer();
        
              },
            ),
            if(constraints.maxWidth>=KMinDesktopWidth)
            const MainDesktop() else
            MainMobile(),
          
        
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
    );
  }
}