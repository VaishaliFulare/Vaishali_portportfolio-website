import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      alignment: Alignment.center, // Center the content
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Align content horizontally
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  CustomColors.scaffoldBg.withOpacity(0.6),
                  CustomColors.scaffoldBg.withOpacity(0.6),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/p.png",
              width: screenWidth / 2, // Adjust width as per design
            ),
          ),
          const SizedBox(height: 30), // Add spacing between the image and text
          const Text(
            "Hi,\nI'm Vaishali Fulare\nAndroid Developer | Flutter Developer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28, // Increase font size for better emphasis
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20), // Add spacing before the button
          SizedBox(
            width: 180, // Adjust button width to match the design
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Match the button color to the design
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded button corners
                ),
              ),
              onPressed: () {
                _launchURL('https://drive.google.com/file/d/1QVyh8i71VWs3YlrL_FeDK5PYZSxd-uy4/view?usp=drive_link'); // Replace with your link
              },
              child: const Text(
                "Download Resume",
                style: TextStyle(
                  fontSize: 16, // Adjust font size for readability
                  color: CustomColors.whitePrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

