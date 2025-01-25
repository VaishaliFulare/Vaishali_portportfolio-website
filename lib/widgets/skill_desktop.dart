import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skills.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Technical Skills Block
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Center the heading horizontally
              children: [
                const Text(
                  "Technical Skills",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.whitePrimary,
                  ),
                  textAlign: TextAlign.center, // Center text
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: skillItems
                          .where((skill) =>
                      skill['type'] == 'technical') // Filter for technical skills
                          .map((skill) {
                        return SizedBox(
                          width: 120,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20), // Space between blocks
          // Soft Skills Block
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Center the heading horizontally
              children: [
                const Text(
                  "Soft Skills",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.whitePrimary,
                  ),
                  textAlign: TextAlign.center, // Center text
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: skillItems
                          .where((skill) =>
                      skill['type'] == 'soft') // Filter for soft skills
                          .map((skill) {
                        return SizedBox(
                          width: 120,
                          height: 50,
                          child: Container(
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
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
