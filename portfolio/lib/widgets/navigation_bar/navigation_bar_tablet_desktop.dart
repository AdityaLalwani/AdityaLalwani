// @dart=2.9
import 'package:flutter/material.dart';
import 'package:portfolio/routing/route_names.dart';
import 'package:portfolio/widgets/navigation_bar/navbar_item.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          NavBarItem('Home', HomeRoute),
          SizedBox(
            width: 60,
          ),
          NavBarItem('About', AboutRoute),
          SizedBox(
            width: 60,
          ),
          NavBarItem('Education', ExperienceRoute),
          SizedBox(
            width: 60,
          ),
          NavBarItem('Skill', SkillRoute),
          SizedBox(
            width: 60,
          ),
          NavBarItem('Projects', ProjectRoute),
        ],
      ),
    );
  }
}
