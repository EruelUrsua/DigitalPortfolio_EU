import 'package:digital_portfolio_ursua/constants/colors.dart';
import 'package:digital_portfolio_ursua/constants/size.dart';
import 'package:digital_portfolio_ursua/constants/skill_items.dart';
import 'package:digital_portfolio_ursua/utils/project_utils.dart';
import 'package:digital_portfolio_ursua/widgets/drawer_mobile.dart';
import 'package:digital_portfolio_ursua/widgets/header_desktop.dart';
import 'package:digital_portfolio_ursua/widgets/header_mobile.dart';
import 'package:digital_portfolio_ursua/widgets/main_desktop.dart';
import 'package:digital_portfolio_ursua/widgets/main_mobile.dart';
import 'package:digital_portfolio_ursua/widgets/project_card.dart';
import 'package:digital_portfolio_ursua/widgets/projects_section.dart';
import 'package:digital_portfolio_ursua/widgets/skills_desktop.dart';
import 'package:digital_portfolio_ursua/widgets/skills_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            const MainMobile(),
          
        
              //Skills
              Container(
                //height: 500,
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                 color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text("Skills",
                    style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                    ),
                    ),
                      const SizedBox(height: 50),

                    //platform and skills
                    if(constraints.maxWidth>=KMedDesktopWidth)
                    const SkillsDesktop() else
                    const SkillsMobile(),

                  ],
                ),


              ),

              const SizedBox(height: 30),
              //Projects
               const ProjectsSection(),

              
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
