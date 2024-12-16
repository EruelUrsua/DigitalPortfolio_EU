import 'package:digital_portfolio_ursua/constants/colors.dart';
import 'package:digital_portfolio_ursua/constants/footer.dart';
import 'package:digital_portfolio_ursua/constants/size.dart';
import 'package:digital_portfolio_ursua/widgets/contact_section.dart';
import 'package:digital_portfolio_ursua/widgets/drawer_mobile.dart';
import 'package:digital_portfolio_ursua/widgets/header_desktop.dart';
import 'package:digital_portfolio_ursua/widgets/header_mobile.dart';
import 'package:digital_portfolio_ursua/widgets/main_desktop.dart';
import 'package:digital_portfolio_ursua/widgets/main_mobile.dart';
import 'package:digital_portfolio_ursua/widgets/projects_section.dart';
import 'package:digital_portfolio_ursua/widgets/skills_desktop.dart';
import 'package:digital_portfolio_ursua/widgets/skills_mobile.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'dart:html' as html;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey <ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(5, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
   final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth>=KMinDesktopWidth?null :  DrawerMobile(onNavItemTap: (int navIndex){
             scaffoldKey.currentState?.closeDrawer();
            scrollToSection(navIndex);

          },),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),
                // MAIN
                if(constraints.maxWidth>=KMinDesktopWidth)
               HeaderDesktop(
                onNavMenuTap: (int navIndex) {
                     scrollToSection(navIndex);
                },
               ) else
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
                  key: navbarKeys[1],
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
                ProjectsSection( key: navbarKeys[2]),
            
                const SizedBox(height: 30),
                // Contact
                ContactSection(key: navbarKeys[3]),
                // Footer
                const Footer(),
              ],
                    
            ),
          ),
        );
      }
    );
  }

    void scrollToSection (int navIndex){
      if (navIndex == 4){
        //Open 
       js.context.callMethod('open', ['https://eruelfrancisursua.wixsite.com/eruelu']);
       
      return;
      }
      else if (navIndex == 5) {
        //Open 
      
      downloadFile("assets/ursua_resume.pdf");




      return;
      }
      final key = navbarKeys[navIndex];
      Scrollable.ensureVisible(
        key.currentContext!, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut); 

    }

    downloadFile(url) {
       html.AnchorElement anchorElement = html.AnchorElement (href : url);
       anchorElement.download = "Ursua_Eruel_Resume";
       anchorElement.click();

    }
}
