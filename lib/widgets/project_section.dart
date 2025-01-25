import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/project_card.dart';

import '../constants/colors.dart';
import '../utlis/project_utils.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    return  Container(

      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Colors.blueGrey,
      child: Column(
        children: [
          const Text(
            "Work Sample",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
          ),
          const SizedBox(height: 50,),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for(int i=0;i<project.length;i++)
                  ProjectCard(project: project[i],),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
