import 'package:flutter/cupertino.dart';

import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text("Made by Vaishali Fulare with Flutter 3.22.3",
        style: TextStyle(fontWeight: FontWeight.w400,
            color: CustomColors.whiteSecondary),) ,
    );
  }
}
