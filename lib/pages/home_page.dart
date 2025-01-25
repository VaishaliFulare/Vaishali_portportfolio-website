import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/utlis/project_utils.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/custom_text_field.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/experince_desktop.dart';
import 'package:my_portfolio/widgets/footer.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import 'package:my_portfolio/widgets/project_section.dart';
import 'package:my_portfolio/widgets/skill_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

import '../constants/skills.dart';
import '../widgets/experince.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController =ScrollController();
  final List<GlobalKey>navabarKeys=List.generate(5, (index)=>GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight=screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColors.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            :  DrawerMobile(onNavItemTap: (int navIndex){
          scaffoldKey.currentState?.closeEndDrawer();
              scrollTosection(navIndex);

        }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(

            children: <Widget>[
              SizedBox(key: navabarKeys.first,),
              // Header
              if (constraints.maxWidth >= kMinDesktopWidth)
                 HeaderDesktop(onNavMenuTap: (int navIndex){
                   scrollTosection(navIndex);

                 })
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              // Main Section
              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop() else const MainMobile(),
              // Skills Section
              Container(
                key: navabarKeys[1],
                height: 500,
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColors.bgLight1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Main Title Centered
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "My Skill Sets",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.whitePrimary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    // Technical Skills Section

                    if(constraints.maxWidth>=kMedDesktopWidth)
                      const SkillDesktop()
                    else
                      const SkillsMobile(),

                  ],
                ),
              ),


              // Projects Section
               ProjectSection(key: navabarKeys[2],),

              // Experience Section
              Container(
                key: navabarKeys[3],
                width: double.infinity,
                height: constraints.maxWidth >= kMedDesktopWidth
                    ? 500.0 // Set the height for ExperienceDesktop
                    : null, // Use null to let it adjust automatically for Experience
                color: CustomColors.bgLight1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0), // Add padding to position the text
                      child: Text(
                        "Experience",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.whitePrimary,

                        ),
                      ),
                    ),
                    Expanded(
                      child: constraints.maxWidth >= kMedDesktopWidth
                          ? const ExperinceDesktop()
                          : const Experience(),
                    ),
                  ],
                ),
              ),



              const SizedBox(height: 80,),



              // Contact Section
               ContactSection(key: navabarKeys[4]),

              const Footer(),



            ],
          ),
        ),
      );
    });
  }

  void scrollTosection(int navIndex){

    final key=navabarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,duration: const Duration(microseconds: 500),curve: Curves.easeInOut,);

  }
}


