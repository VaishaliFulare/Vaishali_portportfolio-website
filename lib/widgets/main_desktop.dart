import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

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

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,\nI'm Vaishali Fulare\nAndroid Developer | Flutter Developer",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.whitePrimary,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 200,
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
                      color: CustomColors.whitePrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/p.png",
            height: 250,
            width: 200,
          ),
        ],
      ),
    );
  }
}

