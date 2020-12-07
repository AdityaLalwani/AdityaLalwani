import 'package:flutter/material.dart';
import 'package:portfolio/routing/route_names.dart';

import 'drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Color(0xff0A192F),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          DrawerItem('Home', Icons.home, HomeRoute),
          DrawerItem('About', Icons.person, AboutRoute),
          DrawerItem('Education', Icons.work, ExperienceRoute),
          DrawerItem('Projects', Icons.palette, ProjectRoute),
        ],
      ),
    );
  }
}
