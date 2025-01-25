import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize =MediaQuery.of(context).size;
    final screenWidth=screenSize.width;
    return  Container(

      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenSize.height/1.2,
      constraints: BoxConstraints(minHeight: 350.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Hi,\nI'm Vaishali Fulare\nAndroid Developer | Flutter Developer",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: CustomColors.whitePrimary,
                height: 1.5,

              ),),
              const SizedBox(height: 15,),
              SizedBox(
                  width: 250,
                  child: ElevatedButton(onPressed: (){}, child:const Text("Get In Touch",
                    style: TextStyle(
                      color: CustomColors.whitePrimary,
                    ),),))
            ],
          ),
          Image.asset("assets/p.png",
            width: screenWidth/2,),
        ],
      ),);
  }
}
