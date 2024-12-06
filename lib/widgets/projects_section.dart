import 'package:digital_portfolio_ursua/constants/colors.dart';
import 'package:digital_portfolio_ursua/utils/project_utils.dart';
import 'package:digital_portfolio_ursua/widgets/project_card.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
      final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
                
                width: screenWidth,
                padding:  const EdgeInsets.fromLTRB(25, 20, 25, 60),

                child: Column(
                  children: [
                    // Hackaton Projects title
                    const Text("Hackathon Projects",
                    style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                    ),
                    ),
                    const SizedBox(height: 50,),
                    // Hackathon Projects cards
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 900),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: [
                          for(int i=0; i< hackathonProjectUtils.length; i++)
                          ProjectCardWidget(project: hackathonProjectUtils[i]),
                        ],
                      ),
                    ),
                    const SizedBox(height: 80,),
                     const Text("Academic Projects",
                    style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                    ),
                    ),
                    const SizedBox(height: 50,),
                    // Academic Projects cards
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 900),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: [
                          for(int i=0; i< schoolProjectUtils.length; i++)
                          ProjectCardWidget(project: schoolProjectUtils[i]),
                        ],
                      ),
                    ),


                  ],
                ),
              );

  }
}