import 'package:digital_portfolio_ursua/constants/colors.dart';
import 'package:digital_portfolio_ursua/utils/project_utils.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project
  });
  final ProjectUtils project;
  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        height: 290,
        width: 260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColor.bgLight2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: CustomColor.whitePrimary,
              child: Image.asset(project.image, height: 140, width: 260,)),
            //Title
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
              child: Text(project.title, style: const TextStyle(fontWeight: FontWeight.w600,
              color: CustomColor.whitePrimary,
              
              ),
              ),
            ),
            //subtitle
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Text(project.subtitle, style: const TextStyle(fontSize: 12,
              color: CustomColor.whiteSecondary,
              
              ),
              ),
            ),
            const Spacer(),
            //footer
            Container(
                color: CustomColor.bgLight1,
                padding: const  EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
            child: Center(
                child: InkWell(
                  onTap: () {
                    js.context.callMethod("open", [project.webLink]);
                  },
                  child: const Text("Click here to preview project", style: TextStyle(color: CustomColor.yellowSecondary, 
                  fontSize: 11,),
                  ),
                ),
    
            ),
            ),
          ],
        ),
    
    
    );
  }
}