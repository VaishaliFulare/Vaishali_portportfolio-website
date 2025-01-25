import 'package:flutter/material.dart';

import '../constants/colors.dart'; // Ensure this file contains 'yellowSecondary' in CustomColors.

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap; // Use VoidCallback for callbacks and make it nullable.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "VF",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: CustomColors.yellowSecondary, // Ensure this exists.
        ),
      ),
    );
  }
}

