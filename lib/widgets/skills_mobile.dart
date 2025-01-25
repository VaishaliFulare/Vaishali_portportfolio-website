import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skills.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 500.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center align the heading
          children: [
            // Technical Skills Section
            const Text(
              "Technical Skills",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColors.whitePrimary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: skillItems
                    .where((skill) => skill['type'] == 'technical') // Filter for technical skills
                    .map((skill) {
                  return Container(
                    width: 120,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (skill['img'] != null)
                          Image.asset(
                            skill['img'], // Image path
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        if (skill['img'] != null) const SizedBox(width: 8),
                        Text(
                          skill['title'], // Skill title
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 40), // Space between sections

            // Soft Skills Section
            const Text(
              "Soft Skills",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColors.whitePrimary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: skillItems
                    .where((skill) => skill['type'] == 'soft') // Filter for soft skills
                    .map((skill) {
                  return Container(
                    width: 120,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      skill['title'], // Soft skill text
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

